---
sidebar_position: 1
---

# Overview

This section explains how to customize your Polygon PoS devnet deployment.

## Running With Custom Arguments

You can pass custom arguments using the `--args-file` flag:

```bash
kurtosis run --enclave pos --args-file params.yml .
```

Alternatively, you can specify arguments directly on the command line:

```bash
kurtosis run --enclave pos . \
  '{"polygon_pos_package": {"network_params": {"bor_id": "98765"}}}"'
```

:::warning
Do not combine an args file with on-the-fly arguments as Kurtosis cannot merge parameters from both sources and will use only the on-the-fly arguments.
:::

## Example Configurations

Below are some sample configurations to help you get started. Feel free to copy and adapt these examples to fit your use case. You can find more examples in the `.github/configs/` directory.

### Heimdall/Bor Devnet

This configuration deploys 4 heimdall/bor validator nodes as well as 2 rpc nodes.

To deploy this environment:

```bash
kurtosis run --enclave pos --args-file .github/configs/heimdall-bor.yml .
```

### Heimdall/Erigon Devnet

This configuration deploys 4 heimdall/erigon validator nodes as well as 2 rpc nodes.

To deploy this environment:

```bash
kurtosis run --enclave pos --args-file .github/configs/heimdall-erigon.yml .
```

### Heimdall-v2/Bor Devnet

This configuration deploys 4 heimdall-v2/bor validator nodes as well as 2 rpc nodes.

To deploy this environment:

```bash
kurtosis run --enclave pos --args-file .github/configs/heimdall-v2-bor.yml .
```

### Observability

This configuration is ideal for development teams who need a complete testing environment with comprehensive monitoring. It deploys the default Heimdall/Bor setup enhanced with debugging and observability tools, making it perfect for development, testing, and troubleshooting.

To deploy this environment:

```bash
kurtosis run --enclave pos --args-file .github/configs/additional-services.yml .
```

Explore the [Configuration Schema](reference.md) for a detailed breakdown of all available options.
