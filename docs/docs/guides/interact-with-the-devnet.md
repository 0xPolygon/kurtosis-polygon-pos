---
sidebar_position: 1
---

# Interact With the Devnet

This guide will explain how to interact with the devnet using Kurtosis by making a simple L2 RPC test call.

:::info
This guide assumes you have a running devnet, if that's not the case, you can head to the [Getting Started](../introduction/getting-started.md) section.
:::

## Inspecting the Devnet

First, you will need to figure out which port Kurtosis is using for the L2 RPC. You can get a general feel for the entire network layout by running the following command.

```bash
kurtosis enclave inspect pos
```

where `pos` is the name of the enclave.

## Retrieving the L2 RPC URL

Let's store the L2 RPC URL in an environment variable for use with `cast`.

```bash
export ETH_RPC_URL=$(kurtosis port print pos l2-el-1-bor-heimdall-validator rpc)
echo $ETH_RPC_URL
```

:::tip
If you want to get the L1 RPC URL, you can use a similar command:

```bash
kurtosis port print pos el-1-geth-lighthouse rpc
```

:::

## Querying the Network

Get the latest block number using `cast` from the [foundry](https://github.com/foundry-rs/foundry) toolchain.

```bash
cast block-number
```

## Sending Transactions

The devnet automatically prefunds an admin account with address `0x74Ed6F462Ef4638dc10FFb05af285e8976Fb8DC9`.

```bash
cast balance --ether 0x74Ed6F462Ef4638dc10FFb05af285e8976Fb8DC9
```

Let's send some transactions now!

```bash
pk="0xd40311b5a5ca5eaeb48dfba5403bde4993ece8eccf4190e98e19fcd4754260ea"
cast send --private-key "$pk" --value 0.01ether $(cast address-zero)
```

Let's send some load using [polycli](https://github.com/0xPolygon/polygon-cli).

```bash
pk="0xd40311b5a5ca5eaeb48dfba5403bde4993ece8eccf4190e98e19fcd4754260ea"
polycli loadtest --rpc-url "$ETH_RPC_URL" --private-key "$pk" --verbosity 700 --requests 5000 --rate-limit 10 --mode t
polycli loadtest --rpc-url "$ETH_RPC_URL" --private-key "$pk" --verbosity 700 --requests 500  --rate-limit 10 --mode 2
polycli loadtest --rpc-url "$ETH_RPC_URL" --private-key "$pk" --verbosity 700 --requests 500  --rate-limit 10 --mode v3
```

## Checking Logs

Pretty often, you will want to check the output from the service. Here is how you can grab some logs:

```bash
kurtosis service logs pos l2-el-1-bor-heimdall-validator --follow
```

## Getting Shell Access

In other cases, if you see an error, you might want to get a shell in the service to be able to poke around.

```bash
kurtosis service shell pos l2-el-1-bor-heimdall-validator
```

## Inspecting Genesis and Contracts Files

You might also want to check the CL and EL genesis files.

```bash
kurtosis files inspect pos l2-cl-genesis genesis.json | jq
kurtosis files inspect pos l2-el-genesis genesis.json | jq
```

In the same way, you might want to check the MATIC contract addresses on L1 and L2.

```bash
kurtosis files inspect pos matic-contract-addresses contractAddresses.json | jq
```

## Clean Up the Environment

When you're done with the devnet, you can tear down the environment.

```bash
kurtosis enclave rm --force pos
```
