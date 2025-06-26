# Stateless Node Testing

This guide provides instructions for setting up and testing stateless nodes in the Polygon PoS devnet environment. Stateless nodes are a new type of node that can synchronize and verify blockchain state without storing the entire blockchain history, significantly reducing storage requirements and improving sync times.

## Overview

Stateless nodes in Polygon PoS:

- Synchronize state from other nodes without downloading the full blockchain history.
- Verify state using cryptographic proofs (witness data).
- Require significantly less storage compared to full nodes.
- Support both Bor (execution layer) and Heimdall v2 (consensus layer).

## 1. Build Local Docker Images

To test stateless functionality, you'll need to build Docker images from specific branches that include the stateless sync implementation. These branches contain the experimental code for witness generation and stateless synchronization.

### Bor

```bash
bor_branch="stateless_sync"
bor_commit_sha="5e4bde2" # 2025/06/24
image_name="local/bor:${bor_commit_sha}"
git clone --branch "${bor_branch}" git@github.com:maticnetwork/bor.git
pushd bor
git checkout "${bor_commit_sha}"
docker build --tag "${image_name}" .
popd
```

### Heimdall v2

```bash
heimdall_v2_branch="stateless_sync"
heimdall_v2_commit_sha="52224d7" # 2025/06/25
image_name="local/heimdall-v2:${heimdall_v2_commit_sha}"
git clone --branch "${heimdall_v2_branch}" git@github.com:0xPolygon/heimdall-v2.git
pushd heimdall-v2
git checkout "${heimdall_v2_commit_sha}"
docker build --tag "${image_name}" .
popd
```

## 2. Deploy a Devnet

Launch the Polygon PoS devnet with stateless node support using the provided configuration:

```bash
kurtosis run --enclave pos --args-file stateless.yml .
```

This deployment creates a comprehensive test environment that includes:

- **Two validator nodes**: Generate witness data while producing blocks.
- **Witness-enabled RPC node**: Provides witness data to other nodes.
- **Hybrid RPC node**: Both generates and consumes witness data for testing bidirectional functionality.
- **Standard RPC node**: Operates in traditional full-sync mode for comparison.
- **Stateless node**: Demonstrates pure stateless synchronization using only witness data.
