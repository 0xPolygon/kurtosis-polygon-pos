---
sidebar_position: 2
---

# Reference

The following tables break down each configuration section and field available for customizing your devnet. Use these references to understand the structure, defaults, and purpose of every option.

:::tip
For the latest defaults and advanced options, always refer to the source code in `src/config/input_parser.star`.
:::

## L1 Configuration

To customize the L1 devnet, include an `ethereum_package` property in your args file. The available options mirror those from the ethereum-package. For the complete YAML schema and default values, refer to the [ethereum-package configuration documentation](https://github.com/ethpandaops/ethereum-package?tab=readme-ov-file#configuration).

```yml title="params.yml"
ethereum_package:
  participants:
    - cl_type: lighthouse
      el_type: geth
  network_params:
    preset: minimal
    seconds_per_slot: 1
```

### `participants`

| Field           | Type    | Default                     | Description                                               |
|-----------------|---------|-----------------------------|-----------------------------------------------------------|
| cl_type         | string  | lighthouse                  | Consensus Layer (CL) client type.                         |
| cl_image        | string  | ethpandaops/lighthouse:unstable-6135f41 | Image for the CL client.                      |
| el_type         | string  | geth                        | Execution Layer (EL) client type.                         |
| el_image        | string  | ethereum/client-go:v1.15.11 | Image for the EL client.                                  |

### `network_params`

| Field           | Type   | Default | Description                                               |
|-----------------|--------|---------|-----------------------------------------------------------|
| preset          | string | minimal | Network preset, useful for rapid testing and development. |
| seconds_per_slot| int    | 1       | Number of seconds per slot on the Beacon chain.           |

## L2 Configuration

To customize the L2 devnet, include a `polygon_pos_package` property in your args file.

```yml title="params.yml"
polygon_pos_package:
  participants:
    - kind: validator
      cl_type: heimdall
      el_type: bor
      count: 2
  network_params:
    el_block_interval_seconds: 2
    el_gas_limit: 10_000_000
  additional_services:
    - prometheus_grafana
```

### `participants`

Default: two validators and one rpc.

| Field         | Type   | Default              | Description                                                                                 |
|---------------|--------|----------------------|---------------------------------------------------------------------------------------------|
| kind          | string | validator            | Role of the node in the network: `validator` or `rpc`.                                      |
| cl_type       | string | heimdall             | Consensus Layer (CL) client type.                                                           |
| cl_image      | string | 0xpolygon/heimdall:1.2.3 | Image for the CL client.                                                                |
| cl_db_image   | string | rabbitmq:4.1         | Image for the CL database.                                                                  |
| cl_log_level  | string | info                 | Log level for the CL client.                                                                |
| el_type       | string | bor                  | Execution Layer (EL) client type.                                                           |
| el_image      | string | 0xpolygon/bor:2.1.1  | Image for the EL client.                                                                    |
| el_log_level  | string | info                 | Log level for the EL client.                                                                |
| count         | int    | 1                    | Number of nodes to spin up for this participant.                                            |

### `setup_images`

| Field                      | Type   | Default                                            | Description                                     |
|----------------------------|--------|----------------------------------------------------|-------------------------------------------------|
| contract_deployer          | string | leovct/pos-contract-deployer-node-20:ed58f8a       | Image used to deploy MATIC contracts to L1.     |
| el_genesis_builder         | string | leovct/pos-el-genesis-builder:96a19dd              | Image used to create the L2 EL genesis file.    |
| validator_config_generator | string | leovct/pos-validator-config-generator:1.2.3-0.2.0 | Image used to generate validator configs.       |

### `network_params`

:::tip
You can check the admin private key and mnemonic default values at `src/config/input_parser.star`.
:::

| Field                             | Type   | Default                                       | Description                                     |
|-----------------------------------|--------|-----------------------------------------------|-------------------------------------------------|
| admin_private_key                 | string | 0xd403...60ea | Private key used to deploy Polygon PoS contracts on both L1 and L2              |
| preregistered_validator_keys_mnemonic | string | sibling lend brave ...                    | Mnemonic for validator keystores.               |
| validator_stake_amount_eth        | int    | 10000                                         | Amount of ether to stake for each validator.    |
| validator_top_up_fee_amount_eth   | int    | 2000                                          | Top up fee amount in ether for each validator.  |
| cl_chain_id                       | string | heimdall-4927                                 | CL network ID.                                  |
| cl_environment                    | string | mainnet                                       | CL environment.                                 |
| cl_span_poll_interval             | string | 0m15s                                         | Span poll interval on the CL chain.             |
| cl_checkpoint_poll_interval       | string | 1m0s                                          | Checkpoint poll interval on the CL chain.       |
| el_chain_id                       | string | "4927"                                        | EL network ID.                                  |
| el_block_interval_seconds         | int    | 2                                             | Seconds per block on the EL chain.              |
| el_sprint_duration                | int    | 16                                            | Duration of an EL sprint (blocks).              |
| el_span_duration                  | int    | 128                                           | Duration of an EL span (blocks).                |
| el_gas_limit                      | int    | 10_000_000                                    | EL gas limit.                                   |

### `additional_services`

The `additional_services` array lets you enable optional tools and utilities alongside your devnet. These are not configuration options themselves, but rather extra services you can include by listing their names in the array.

| Service              | Description                                                                                                   |
|----------------------|---------------------------------------------------------------------------------------------------------------|
| `blockscout`         | Blockchain explorer for viewing blocks, transactions, and accounts. (Coming soon)                             |
| `prometheus_grafana` | Monitoring stack: deploys Prometheus, Grafana, and [Panoptichain](https://github.com/0xPolygon/panoptichain). |
| `test_runner`        | Runs [agglayer/e2e](https://github.com/agglayer/e2e) end-to-end tests against the devnet.                     |
| `tx_spammer`         | Sends spam transactions to the network to simulate load. (Coming soon)                                        |

### `test_runner_params`

| Field                 | Type   | Default            | Description                                     |
|-----------------------|--------|--------------------|-------------------------------------------------|
| image                 | string | leovct/e2e:9fe80e1 | Image used to deploy the test runner - used to run [agglayer/e2e](https://github.com/agglayer/e2e) tests. |
