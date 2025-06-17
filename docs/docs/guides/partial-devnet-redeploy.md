---
sidebar_position: 3
---

# Partial Devnet Redeploy

This guide will explain how to use the dev parameters to save some time when re-deploying the package after making changes to the L2 participants.

:::info
Kurtosis added a new feature in the [v1.7.2](https://github.com/kurtosis-tech/kurtosis/releases/tag/1.7.2) release called [kurtosis service update](https://docs.kurtosis.com/service-update) which serves the same purpose.

```bash
kurtosis service update --image 0xpolygon/bor:2.0.1 pos l2-el-1-bor-heimdall-validator
```

Note that this feature is even more powerful — it can update not only the container image, but also file artifacts mounted into the container, the command used to run the service, environment variables, the entrypoint, ports, and more.
:::

Let's imagine you used the following configuration:

```yml title="params.yml"
polygon_pos_package:
  participants:
    - kind: validator
      cl_type: heimdall
      el_type: bor
      el_image: 0xpolygon/bor:2.0.0
      count: 2
```

and now you would like to deploy a newer version of bor without re-deploying the whole network (especially the L1).

## Save L2 Genesis and Contract Files

:::info
This guide assumes you have a running devnet, if that's not the case, you can head to the [Getting Started](../introduction/getting-started.md) section.
:::

First, we will save the L2 CL and EL genesis files for later.

```bash
mkdir -p ./tmp
kurtosis files inspect pos l2-cl-genesis genesis.json | jq > ./tmp/l2-cl-genesis.json
kurtosis files inspect pos l2-el-genesis genesis.json | jq > ./tmp/l2-el-genesis.json
kurtosis files inspect pos matic-contract-addresses contractAddresses.json | jq > ./tmp/matic-contract-addresses.json
```

## Specify Dev Parameters

Then, we will add the following `dev` parameters to the configuration.

The first part will avoid re-deploying the L1 devnet and the second part will avoid re-deploying the MATIC contracts to L1 and re-generating the L2 CL and EL genesis files.

```yml title="params.yml"
dev:
  should_deploy_l1: false
  l1_rpc_url: http://el-1-geth-lighthouse:8545

  should_deploy_matic_contracts: false
  l2_cl_genesis_filepath: ./tmp/l2-cl-genesis.json
  l2_el_genesis_filepath: ./tmp/l2-el-genesis.json
  matic_contract_addresses_filepath: ./tmp/matic-contract-addresses.json
```

## Update L2 Participant Configuration

Finally, we will modify the EL image of the L2 validators to use `0xpolygon/bor:2.0.1` instead of `0xpolygon/bor:2.0.0`.

The final configuration should look like the following:

```yml title="params.yml"
polygon_pos_package:
  participants:
    - kind: validator
      cl_type: heimdall
      el_type: bor
      el_image: 0xpolygon/bor:2.0.1
      count: 2

dev:
  should_deploy_l1: false
  l1_rpc_url: http://el-1-geth-lighthouse:8545

  should_deploy_matic_contracts: false
  l2_cl_genesis_filepath: ./tmp/l2-cl-genesis.json
  l2_el_genesis_filepath: ./tmp/l2-el-genesis.json
  matic_contract_addresses_filepath: ./tmp/matic-contract-addresses.json
```

## Stop the Validators

Stop the validators to avoid any issues when deploying the L2 contracts.

```bash
kurtosis service stop pos l2-el-1-bor-heimdall-validator
kurtosis service stop pos l2-el-2-bor-heimdall-validator
```

## Re-deploy Only L2 Participants

You can now run the package and it will only re-deploy the L2 participants. The deployment should be much faster!

```bash
kurtosis run --enclave pos --args-file params.yml .
```

You may want to check the logs of the new Bor service if any issues arise.

You can repeat this process whenever you need to make changes to L2 participants without resetting your entire devnet.
