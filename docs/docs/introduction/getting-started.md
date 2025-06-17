---
sidebar_position: 3
---

# Getting Started

Get up and running with the package in just a few steps.

:::info
Make sure you have installed the [required tools](./installation.md)!
:::

1. Deploy a local Polygon PoS devnet.

```bash
kurtosis run --enclave pos github.com/0xPolygon/kurtosis-polygon-pos
```

where `pos` is the name of the enclave, you can choosse any name you like.

2. Retrieve the L2 RPC URL.

```bash
export ETH_RPC_URL=$(kurtosis port print pos l2-el-1-bor-heimdall-validator rpc)
echo $ETH_RPC_URL
```

This sets the `ETH_RPC_URL` environment variable for use with `cast`.

3. Send a test transaction.

```bash
pk="0xd40311b5a5ca5eaeb48dfba5403bde4993ece8eccf4190e98e19fcd4754260ea"
cast send --private-key "$pk" --value 0.01ether $(cast address-zero)
```

where `0xd40311b5a5ca5eaeb48dfba5403bde4993ece8eccf4190e98e19fcd4754260ea` is the admin private key used to deploy Polygon PoS contracts on both L1 and L2.

:::tip
You may want to generate a new wallet and fund it using the admin private key to avoid nonce issues!
:::

4. Tear down the devnet.

```bash
kurtosis enclave rm --force pos
```

You're now ready to start exploring and customizing your devnet!  

Check out the next sections for configuration options, usage guides, and more advanced workflows.
