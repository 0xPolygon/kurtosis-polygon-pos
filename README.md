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

Run the package with default configurations with the following command. It will deploy a PoS devnet with three participants, two Heimdall/Bor validators and one Heimdall/Bor rpc.

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
kurtosis run --enclave pos-devnet github.com/0xPolygon/kurtosis-polygon-pos '{"polygon_pos_package": {"network_params": {"bor_id": "137"}}}"'
```

If you want to make modifications to the package, you can also run the package locally.

```bash
kurtosis run --args-file params.yml --enclave pos-devnet .
```

### Interact

To make sure the devnet is running correctly, you can use two of our handy scripts. The first script scans the Kurtosis enclave to identify the rpc urls of the different nodes (run this script only once per deployment), while the second script queries the different rpc urls and returns the status of the devnet.

```bash
export ENCLAVE="pos-devnet "
bash scripts/discover.sh
bash scripts/status.sh
```

If you want to format the result in a more readable way, you can use the following command.

```bash
result=$(bash scripts/status.sh)
echo "${result}" | jq --raw-output '
  (["Layer", "ID", "Name", "Peers", "Height", "Latest Block Hash", "Is Syncing"] | (., map(length*"-"))),
  (.participants.cl[] | ["CL"] + [.id, .name, .peers, .height, .latestBlockHash[:10], .isSyncing]),
  (.participants.el[] | ["EL"] + [.id, .name, .peers, .height, .latestBlockHash[:10], .isSyncing])
  | @tsv' | column -ts $'\t'
```

A healthy devnet is characterized by CL and EL nodes that successfully establish peer connections and show consistent block production and finalization across both layers.

Now that we made sure the devnet is healthy, let's do a simple L2 rpc test call.

First, you will need to figure out which port Kurtosis is using for the rpc. You can get a general feel for the entire network layout by running the following command.

```bash
kurtosis enclave inspect pos-devnet
```

That output, while quite useful, might also be a little overwhelming. Let's store the rpc url in an environment variable.

```bash
export ETH_RPC_URL=$(kurtosis port print pos-devnet l2-el-3-bor-heimdall-rpc)
```

Send some load to the network.

```bash
export ETH_RPC_URL="$(kurtosis port print pos-devnet  l2-el-1-bor-heimdall-validator rpc)"
private_key="0x2a4ae8c4c250917781d38d95dafbb0abe87ae2c9aea02ed7c7524685358e49c2"

# Send some load using polycli.
polycli loadtest --rpc-url "$ETH_RPC_URL" --legacy --private-key "$private_key" --verbosity 700 --requests 5000 --rate-limit 10 --mode t
polycli loadtest --rpc-url "$ETH_RPC_URL" --legacy --private-key "$private_key" --verbosity 700 --requests 500  --rate-limit 10 --mode 2
polycli loadtest --rpc-url "$ETH_RPC_URL" --legacy --private-key "$private_key" --verbosity 700 --requests 500  --rate-limit 10 --mode v3

# You can also use cast.
cast send --legacy --private-key "$private_key" --value 0.01ether $(cast address-zero)
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
kurtosis files inspect pos-devnet  l2-cl-genesis genesis.json | tail -n +2 | jq
kurtosis files inspect pos-devnet  l2-el-genesis genesis.json | tail -n +2 | jq
```

In the same way, you might want to check the MATIC contract addresses on the root and child chains.

```bash
kurtosis files inspect pos-devnet  matic-contract-addresses contractAddresses.json | tail -n +2 | jq
```

### Tear Down

Once done with the enclave, you can remove its contents (services and files) with the following command.

```bash
kurtosis enclave rm --force pos-devnet
```

## Configuration

To configure the package behaviour, you can create your own `params.yml` file. By the way, you can name it anything you like. The full YAML schema that can be passed in is as follows with the defaults provided:

```yml
ethereum_package:
  participants:
    - el_type: geth
      el_image: ethereum/client-go:v1.14.12
      cl_type: lighthouse
      cl_image: sigp/lighthouse:v6.0.0
      use_separate_vc: true
      vc_type: lighthouse
      vc_image: sigp/lighthouse:v6.0.0
  network_params:
    preset: minimal
    seconds_per_slot: 1

polygon_pos_package:
  # Specification of the Polygon PoS participants in the network.
  participants:
    - ## Execution Layer (EL) specific flags.
      # The type of EL client that should be started.
      # Valid values are:
      # - bor
      # - erigon (will be supported soon).
      el_type: bor

      # The docker image that should be used for the EL client.
      # Leave blank to use the default image for the client type.
      # Defaults by client:
      # - bor: 0xpolygon/bor:1.5.3
      # - erigon: TBD
      el_image: ""

      # The log level string that this participant's EL client should log at.
      # Leave blank to use the default log level, info.
      # Valid values are:
      # - error
      # - warn
      # - info
      # - debug
      # - trace
      el_log_level: ""

      ## Consensus Layer (CL) specific flags.
      # The type of CL client that should be started.
      # Valid values are:
      # - heimdall
      # - heimdall-v2 (will be supported soon).
      cl_type: heimdall

      # The docker image that should be used for the CL client.
      # Leave blank to use the default image for the client type.
      # Defaults by client:
      # - heimdall: 0xpolygon/heimdall:1.0.10
      # - heimdall-v2: TDB
      cl_image: ""

      # The docker image that should be used for the CL's client database.
      # Leave blank to use the default image.
      # Default: rabbitmq:4.0.5
      cl_db_image: ""

      # The log level string that this participant's CL client should log at.
      # Leave blank to use the default log level, info.
      # Valid values are:
      # - error
      # - warn
      # - info
      # - debug
      # - trace
      cl_log_level: ""

      # Wether to run this participant as a validator or an RPC.
      # Default: false (run as an RPC).
      is_validator: true

      # Count of nodes to spin up for this participant.
      # Default: 1
      count: 2
    - el_type: bor
      cl_type: heimdall
      is_validator: false

  matic_contracts_params:
    contracts_deployer_image: ""
    el_genesis_builder_image: ""
    validator_config_generator_image: ""
  
  network_params:
    network: ""

    # Validators parameters.
    preregistered_validator_keys_mnemonic: ""
    validator_stake_amount: ""
    validator_top_up_fee_amount: ""

    # Consensus Layer parameters.
    cl_chain_id: ""
    cl_span_poll_interval: ""
    cl_checkpoint_poll_interval: ""
    
    # Execution Layer parameters.
    el_chain_id: ""
    el_block_interval_seconds: ""
    el_sprint_duration: ""
    el_span_duration: ""
    el_gas_limit: ""
  
  additional_services:
    - tx_spammer
```
