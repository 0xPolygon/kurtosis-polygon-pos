# Docker Images

## Client Images

### Bor Modified for Heimdall v2

- [Docker Hub](https://hub.docker.com/r/leovct/bor)

```bash
bor_branch="heimdall-v2"
bor_commit_sha="84794ac" # 2025/04/25
image_name="leovct/bor:${bor_commit_sha}"
git clone --branch "${bor_branch}" git@github.com:maticnetwork/bor.git
pushd bor
git checkout "${bor_commit_sha}"
docker build --tag "${image_name}" .
docker push "${image_name}"
popd
```

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
heimdall_v2_version="0.1.12" # 2025/05/05
image_name="leovct/pos-validator-config-generator:${heimdall_version}-${heimdall_v2_version}"
docker build \
  --build-arg HEIMDALL_VERSION="${heimdall_version}" \
  --build-arg HEIMDALL_V2_VERSION="${heimdall_v2_version}" \
  --tag "${image_name}" \
  --file pos-validator-config-generator.Dockerfile \
  .
docker push "${image_name}"
```
