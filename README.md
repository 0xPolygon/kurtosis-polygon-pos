# Polygon PoS Kurtosis Package

A [Kurtosis](https://github.com/kurtosis-tech/kurtosis) package for creating a private, portable and modular Polygon PoS devnet that can be deployed locally or in the cloud using Docker or Kubernetes. The package includes network tools and supports multiple clients, making blockchain development and testing more accessible.

> 🚨 Please note that this package is not intended for production use!

Specifically, this package will:

1. Spin up a local L1 chain, fully customizable with multi-client support, leveraging the [ethereum-package](https://github.com/ethpandaops/ethereum-package).
2. Deploy MATIC contracts to L1 as well as stake for each validators.
3. Generate Consensus Layer (CL) and Execution Layer (EL) genesis information.
4. Configure and boostrap a network of Polygon PoS nodes of configurable size using the genesis data generated above.

Optional features:

- Spin up a transaction spammer to send fake transactions to the network.
- Spin up monitoring solutions such as Prometheus, Grafana and Blockscout to observe the network.

## Table of contents

- [Quickstart](#quickstart)
  - [Prerequisites](#prerequisites)
  - [Deploy](#deploy)
  - [Interact](#interact)
  - [Test](#test)
  - [Make Changes](#make-changes)
  - [Tear Down](#tear-down)
- [Configuration](#configuration)

## Quickstart

### Prerequisites

You will need to install the following tools:

- [kurtosis](https://github.com/kurtosis-tech/kurtosis)
- [docker](https://docs.docker.com/)

If you intend to interact with and debug the devnet, you may also want to consider a few additional tools such as:

- [jq](https://github.com/jqlang/jq)
- [yq](https://pypi.org/project/yq/) (v3)
- [foundry](https://github.com/foundry-rs/foundry) (`cast` and `forge`)
- [polycli](https://github.com/0xPolygon/polygon-cli)

### Deploy

Run the package with default configurations with the following command. It will deploy a PoS devnet with three participants, two Heimdall/Bor validators and one Heimdall/Bor rpc. This process typically takes around five minutes.

```bash
kurtosis run --enclave pos-devnet github.com/0xPolygon/kurtosis-polygon-pos
```

Kurtosis packages are highly configurable, allowing users to customize network behavior by defining parameters in a file that can be dynamically passed at runtime.

```bash
kurtosis run --args-file params.yml --enclave pos-devnet github.com/0xPolygon/kurtosis-polygon-pos
```

Where `params.yml` contains the parameters of the devnet.

Note that it is also possible to specify args on the command line.

```bash
kurtosis run --enclave pos-devnet github.com/0xPolygon/kurtosis-polygon-pos '{"polygon_pos_package": {"network_params": {"bor_id": "98765"}}}"'
```

If you want to make modifications to the package, you can also run the package locally.

```bash
kurtosis run --args-file params.yml --enclave pos-devnet .
```

### Interact

Let's do a simple L2 rpc test call.

First, you will need to figure out which port Kurtosis is using for the rpc. You can get a general feel for the entire network layout by running the following command.

```bash
kurtosis enclave inspect pos-devnet
```

That output, while quite useful, might also be a little overwhelming. Let's store the rpc url in an environment variable.

```bash
export ETH_RPC_URL=$(kurtosis port print pos-devnet l2-el-1-bor-heimdall-validator rpc)
```

Send some load to the network.

```bash
# Using polycli.
pk="0x2a4ae8c4c250917781d38d95dafbb0abe87ae2c9aea02ed7c7524685358e49c2"
polycli loadtest --rpc-url "$ETH_RPC_URL" --legacy --private-key "$pk" --verbosity 700 --requests 5000 --rate-limit 10 --mode t
polycli loadtest --rpc-url "$ETH_RPC_URL" --legacy --private-key "$pk" --verbosity 700 --requests 500  --rate-limit 10 --mode 2
polycli loadtest --rpc-url "$ETH_RPC_URL" --legacy --private-key "$pk" --verbosity 700 --requests 500  --rate-limit 10 --mode v3

# Using cast.
cast send --legacy --private-key "$pk" --value 0.01ether $(cast address-zero)
```

Pretty often, you will want to check the output from the service. Here is how you can grab some logs:

```bash
kurtosis service logs pos-devnet l2-el-1-bor-heimdall-validator --follow
```

In other cases, if you see an error, you might want to get a shell in the service to be able to poke around.

```bash
kurtosis service shell pos-devnet l2-el-1-bor-heimdall-validator
```

You might also want to check the CL and EL genesis files.

```bash
kurtosis files inspect pos-devnet l2-cl-genesis genesis.json | jq
kurtosis files inspect pos-devnet l2-el-genesis genesis.json | jq
```

In the same way, you might want to check the MATIC contract addresses on L1 and L2.

```bash
kurtosis files inspect pos-devnet matic-contract-addresses contractAddresses.json | jq
```

### Test

Trigger a state sync using the [agglayer/e2e](https://github.com/agglayer/e2e) repository.

```bash
git clone https://github.com/agglayer/e2e.git
pushd e2e
bats --filter-tags pos,bridge,matic,pol --recursive tests/
```

### Make Changes

Once you have deployed the package once, you should have a fully working L1 devnet, MATIC contracts deployed to L1 and L2, as well as a fully working L2 Polygon PoS devnet.

Now imagine you would like to make a change to some of the L2 participants, eg. the EL image. No need to re-run the entire package, you can specify the `dev` parameters to save some time!

Let's imagine you used the following configuration:

```yml
# params.yml
polygon_pos_package:
  participants:
    - kind: validator
      cl_type: heimdall
      el_type: bor
      el_image: 0xpolygon/bor:2.0.3
      count: 2
    - kind: rpc
      cl_type: heimdall
      el_type: bor
      count: 1
```

First, we will save the L2 CL and EL genesis files for later.

```bash
mkdir -p ./tmp
kurtosis files inspect pos-devnet l2-cl-genesis genesis.json | jq > ./tmp/l2-cl-genesis.json
kurtosis files inspect pos-devnet l2-el-genesis genesis.json | jq > ./tmp/l2-el-genesis.json
kurtosis files inspect pos-devnet matic-contract-addresses contractAddresses.json | jq > ./tmp/matic-contract-addresses.json
```

Then, we will add the following `dev` parameters to the configuration.

```yml
dev:
  # Avoid re-deploying the L1 devnet.
  should_deploy_l1: false
  l1_rpc_url: http://el-1-geth-lighthouse:8545

  # Avoid re-deploying the MATIC contracts to L1 and re-generating the L2 CL and EL genesis files.
  should_deploy_matic_contracts: false
  l2_cl_genesis_filepath: ./tmp/l2-cl-genesis.json
  l2_el_genesis_filepath: ./tmp/l2-el-genesis.json
  matic_contract_addresses_filepath: ./tmp/matic-contract-addresses.json
```

Finally, we will modify the EL image of the L2 validators to use `0xpolygon/bor:2.0.0`.

The final configuration should like the following:

```yml
# params.yml
polygon_pos_package:
  participants:
    - kind: validator
      cl_type: heimdall
      el_type: bor
      el_image: 0xpolygon/bor:2.0.0 # default: 0xpolygon/bor:2.0.3
      count: 2
    - kind: rpc
      cl_type: heimdall
      el_type: bor
      count: 1

dev:
  # Avoid re-deploying the L1 devnet.
  should_deploy_l1: false
  l1_rpc_url: http://el-1-geth-lighthouse:8545

  # Avoid re-deploying the MATIC contracts to L1 and re-generating the L2 CL and EL genesis files.
  should_deploy_matic_contracts: false
  l2_cl_genesis_filepath: ./tmp/l2-cl-genesis.json
  l2_el_genesis_filepath: ./tmp/l2-el-genesis.json
  matic_contract_addresses_filepath: ./tmp/matic-contract-addresses.json
```

Stop the validators to avoid any issue when deploying the L2 contracts.

```bash
kurtosis service stop pos-devnet l2-el-1-bor-heimdall-validator
kurtosis service stop pos-devnet l2-el-2-bor-heimdall-validator
```

You can now run the package and it will only re-deploy the L2 participants. The deployment should be way faster!

```bash
kurtosis run --args-file params.yml --enclave pos-devnet .
```

### Tear Down

Once done with the enclave, you can remove its contents with the following command.

```bash
kurtosis enclave rm --force pos-devnet
```

## Configuration

To configure the package behaviour, you can create your own `params.yml` file (you can name it anything you like). The full YAML schema that can be passed in is as follows with the defaults provided:

```yml
# Ethereum package (L1) configuration.
# https://github.com/ethpandaops/ethereum-package?tab=readme-ov-file#configuration
ethereum_package:
  # Specification of the L1 participants.
  # By default, the L1 will rely on a single validator node (lighthouse/geth).
  participants:
    - el_type: geth
      el_image: ethereum/client-go:v1.14.12
      cl_type: lighthouse
      cl_image: sigp/lighthouse:v6.0.0
      use_separate_vc: true
      vc_type: lighthouse
      vc_image: sigp/lighthouse:v6.0.0

  # L1 network parameters.
  network_params:
    # Preset for the network.
    # Minimal preset is useful for rapid testing and development.
    # It only takes 192 seconds to get to finalized epoch vs 1536 seconds with mainnet defaults.
    preset: minimal
    # Number of seconds per slot on the Beacon chain.
    seconds_per_slot: 1


# Polygon PoS package (L2) configuration.
polygon_pos_package:
  # Specification of the L2 participants.
  participants:
    - ## Role of the participant in the network.
      # Valid values are:
      # - "validator": A participant responsible for validating and proposing blocks.
      # - "rpc": A participant that provides RPC endpoints for interacting with the network (e.g., querying data, sending transactions).
      kind: validator

      ## Execution Layer (EL) specific flags.
      # The type of EL client that should be started.
      # Valid values are: "bor", "erigon"
      el_type: bor

      # The docker image that should be used for the EL client.
      # Leave blank to use the default image for the client type.
      # Defaults by client:
      # - bor: "0xpolygon/bor:2.0.3"
      # - bor modified for heimdall-v2: "leovct/bor:84794ac"
      # - erigon: "erigontech/erigon:main-latest"
      el_image: 0xpolygon/bor:2.0.3

      # The log level string that this participant's EL client should log at.
      # Leave blank to use the default log level, info.
      # Valid values are: "error", "warn", "info", "debug", "trace"
      el_log_level: info

      ## Consensus Layer (CL) specific flags.
      # The type of CL client that should be started.
      # Valid values are: "heimdall", "heimdall-v2"
      cl_type: heimdall

      # The docker image that should be used for the CL client.
      # Leave blank to use the default image for the client type.
      # Defaults by client:
      # - heimdall: "0xpolygon/heimdall:1.2.3"
      # - heimdall-v2: "0xpolygon/heimdall-v2:0.1.12"
      cl_image: 0xpolygon/heimdall:1.2.3

      # The docker image that should be used for the CL's client database.
      # Leave blank to use the default image.
      # Default: "rabbitmq:4.0.6"
      cl_db_image: rabbitmq:4.0.6

      # The log level string that this participant's CL client should log at.
      # Leave blank to use the default log level, info.
      # Valid values are: "error", "warn", "info", "debug", "trace"
      cl_log_level: info

      # Count of nodes to spin up for this participant.
      # Default: 1
      count: 2

    - kind: rpc
      el_type: bor
      cl_type: heimdall

  # Images for contract deployment and configuration.
  setup_images:
    # Image used to deploy MATIC contracts to L1.
    # Default: "leovct/pos-contract-deployer-node-20:ed58f8a"
    contract_deployer: leovct/pos-contract-deployer-node-20:ed58f8a
    # Image used to create the L2 EL genesis file.
    # Default: "leovct/pos-el-genesis-builder:96a19dd"
    el_genesis_builder: leovct/pos-el-genesis-builder:96a19dd
    # Image used to generate L2 CL/EL validators configurations.
    # Default: "leovct/pos-validator-config-generator:1.2.3-0.1.12"
    validator_config_generator: leovct/pos-validator-config-generator:1.2.3-0.1.12

  # L2 network parameters.
  network_params:
    ## Validators parameters.
    # This mnemonic will be used to create keystores for CL/EL validators.
    # Note that validators accounts are prefunded to make the validator setup easier and faster.
    # Take a look at src/prefunded_accounts/README.md
    # Default: "sibling lend brave explain wait orbit mom alcohol disorder message grace sun"
    preregistered_validator_keys_mnemonic: sibling lend brave explain wait orbit mom alcohol disorder message grace sun
    # The amount of ether to stake for each validator.
    # Default: 10000
    validator_stake_amount_eth: 10000
    # The top up fee amount, in ether, for each validator.
    # Default: 2000
    validator_top_up_fee_amount_eth: 2000

    ## Consensus Layer parameters.
    # The CL network id.
    # Default: "heimdall-4927"
    # Note: it must be a string!
    cl_chain_id: heimdall-4927
    # The span poll interval on the CL chain.
    # Default: "0m15s"
    cl_span_poll_interval: 0m15s
    # The checkpoint pool interval on the CL chain.
    # Default: "1m0s"
    cl_checkpoint_poll_interval: 1m0s
    # The CL environment.
    # Default: "mainnet"
    cl_environment: mainnet

    ## Execution Layer parameters.
    # The EL network id.
    # Default: "4927"
    # Note: it must be a string!
    el_chain_id: "4927"
    # The number of seconds per block on the EL chain.
    # Default: 2
    el_block_interval_seconds: 2
    # The duration of an EL sprint, measured in blocks.
    # Default: 16
    el_sprint_duration: 16
    # The duration of an EL span, measured in blocks.
    # Default: 128
    el_span_duration: 128
    # The EL gas limit.
    # Default: 10^7
    el_gas_limit: 10_000_000

  # Additional services to run in this enclave.
  # Default: []
  additional_services:
    # A blockchain explorer (will be supported soon).
    # - blockscout
    # A monitoring stack composed of Prometheus and Grafana.
    - prometheus_grafana
    # A test runner based on the agglayer/e2e repository (https://github.com/agglayer/e2e).
    - test_runner
    # A transaction spammer to send fake transactions to the network (will be supported soon).
    # - tx_spammer
```
