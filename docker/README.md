# Docker Images

## Client Images

### Bor Modified for Heimdall v2

- [Docker Hub](https://hub.docker.com/r/leovct/bor)

```bash
# bor_branch="develop"
# bor_commit_sha="3dc7d31" # 2025/06/18
# image_name="leovct/bor:${bor_commit_sha}"
# git clone --branch "${bor_branch}" git@github.com:maticnetwork/bor.git

bor_branch="develop-with-heimdall-migration-monitor-fix"
bor_commit_sha="55d47b8" # 2025/06/24
image_name="leovct/bor:${bor_commit_sha}-fix"
git clone --branch "${bor_branch}" git@github.com:leovct/bor.git

pushd bor
git checkout "${bor_commit_sha}"
docker build --tag "${image_name}" .
docker push "${image_name}"
popd
```

Note that we use a slightly modified version of Bor to address startup deadlocks that occurred with Heimdall v2 devnets in our CI deployments.

#### What Was Happening

- Node 1 was failing to start, getting stuck in an infinite loop of "Error while fetching heimdallv1 span: response code 501".
- Node 2 was starting successfully, properly detecting Heimdall v2 and switching to v2 APIs.
- The "Starting Heimdall migration monitor" log never appeared in Node 1, indicating it never reached that startup phase.

For reference, check [node1.log](./node1.log) and [node2.log](./node2.log).

#### Root Cause Analysis

1. Circular dependency: During Bor node startup, the backend creation (`eth.New()`) immediately initializes the Bor consensus engine.
2. Early span requirement: The consensus engine creates a span store that may need span data during initialization.
3. Wrong API version: The span store defaults to IsHeimdallV2 = false`, so it tries v1 APIs first.
4. Heimdall v2 rejection: Heimdall v2 returns HTTP 501 for v1 API calls (not implemented).
5. Infinite retry: The span fetching retry mechanism kept trying v1 APIs every 5 seconds indefinitely.
6. Blocked startup: This prevented the startup process from progressing to the Heimdall migration monitor that would detect v2.

#### Solution: Self-Healing Span Store

Instead of trying to coordinate startup timing, we made the span store automatically detect the correct Heimdall version:

```go
// Check if error indicates Heimdall v2 (501 response for v1 API)
if strings.HasSuffix(err.Error(), "response code 501") {
    log.Info("Detected Heimdall v2 from 501 response, switching to v2 API")
    hmm.IsHeimdallV2 = true
    // Let the retry logic handle this with v2 API
    return false
}
```

Location: `consensus/bor/span_store.go:147-152`

#### How It Works

1. Node starts up and span store tries v1 API (default behavior).
2. Gets 501 error from Heimdall v2.
3. Automatically detects this means Heimdall v2 and sets the flag.
4. Retries with v2 API and succeeds.
5. Normal startup continues.

#### Why This Is Better

- Eliminates race conditions between migration monitor and span fetching
- Self-healing - works regardless of startup timing
- Minimal code change - no complex startup coordination needed
- Robust - handles the version detection at the point where it's needed

The key insight was that the 501 error itself is a reliable indicator that we're talking to Heimdall v2, so we can use it for automatic detection rather than relying on a separate migration monitor to run first.

## Utility Images

### Polygon PoS Contract Deployer

#### Node 16

- [Docker Hub](https://hub.docker.com/r/leovct/pos-contract-deployer-node-16)

```bash
matic_contracts_branch="mardizzone/node-16"
matic_contracts_commit_sha="c4d8e12" # 2023/12/06
image_name="leovct/pos-contract-deployer-node-16:${matic_contracts_commit_sha}"
docker build \
  --build-arg MATIC_CONTRACTS_BRANCH="${matic_contracts_branch}" \
  --build-arg MATIC_CONTRACTS_TAG_OR_COMMIT_SHA="${matic_contracts_commit_sha}" \
  --tag "${image_name}" \
  --file pos-contract-deployer/node-16.Dockerfile \
  .
docker push "${image_name}"
```

#### Node 20

- [Docker Hub](https://hub.docker.com/r/leovct/pos-contract-deployer-node-20)

```bash
pos_contracts_branch="anvil-pos"
pos_contracts_commit_sha="ed58f8a" # 2025/03/27
image_name="leovct/pos-contract-deployer-node-20:${pos_contracts_commit_sha}"
docker build \
  --build-arg POS_CONTRACTS_BRANCH="${pos_contracts_branch}" \
  --build-arg POS_CONTRACTS_TAG_OR_COMMIT_SHA="${pos_contracts_commit_sha}" \
  --tag "${image_name}" \
  --file pos-contract-deployer/node-20.Dockerfile \
  .
docker push "${image_name}"
```

### Polygon PoS EL Genesis Builder

- [Docker Hub](https://hub.docker.com/r/leovct/pos-el-genesis-builder)

```bash
genesis_contracts_branch="master"
genesis_contracts_commit_sha="96a19dd" # 2025/01/08
image_name="leovct/pos-el-genesis-builder:${genesis_contracts_commit_sha}"
docker build \
  --build-arg GENESIS_CONTRACTS_BRANCH="${genesis_contracts_branch}" \
  --build-arg GENESIS_CONTRACTS_TAG_OR_COMMIT_SHA="${genesis_contracts_commit_sha}" \
  --tag "${image_name}" \
  --file pos-el-genesis-builder.Dockerfile \
  .
docker push "${image_name}"
```

Note: We do not use the latest version of the [genesis contracts](https://github.com/maticnetwork/genesis-contracts), `244bc6a`, released on 2025/03/13, because it introduces a breaking change. The `StateReceiver` contract requires solc `0.6.12`, while all other contracts still rely on solc `0.5.17`. As a result, when generating the EL genesis, it attempts to compile all the contracts, including the `StateReceiver`. Since we only install solc `0.5.17` in the `pos-el-genesis-builder` image, the compilation fails. Removing the compilation of the `StateReceiver` contract does not work because the EL genesis alloc section will be incorrect for contract `0000000000000000000000000000000000001001`, as the code will be `0x`. Therefore, we opted to use a previous version, `96a19dd`, released on 2025/01/08.

### Polygon PoS Validator Config Generator

- [Docker Hub](https://hub.docker.com/r/leovct/pos-validator-config-generator)

```bash
heimdall_version="1.2.3" # 2025/04/16
heimdall_v2_version="0.2.0" # 2025/06/19
image_name="leovct/pos-validator-config-generator:${heimdall_version}-${heimdall_v2_version}"
docker build \
  --build-arg HEIMDALL_VERSION="${heimdall_version}" \
  --build-arg HEIMDALL_V2_VERSION="${heimdall_v2_version}" \
  --tag "${image_name}" \
  --file pos-validator-config-generator.Dockerfile \
  .
docker push "${image_name}"
```
