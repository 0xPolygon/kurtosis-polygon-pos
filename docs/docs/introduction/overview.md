---
slug: /
sidebar_position: 1
---

# Overview

👋 Welcome to the Polygon PoS Kurtosis package documentation!

This project provides a modular, reproducible environment for developing, testing, and running [Polygon PoS](https://docs.polygon.technology/pos/) devnets using [Kurtosis](https://kurtosis.com/).

Specifically, this package will:

1. Spin up a local L1 blockchain, fully customizable with multi-client support, leveraging the [Ethereum Kurtosis package](https://github.com/ethpandaops/ethereum-package).
2. Deploy Polygon PoS contracts to L1 and stake for each validator.
3. Generate L2 consensus and execution layer genesis information.
4. Configure and launch a network of Polygon PoS nodes.

Optional features:

- Run a transaction spammer to simulate network load.
- Deploy monitoring solutions such as [Prometheus](https://prometheus.io/), [Grafana](https://grafana.com/), [Panoptichain](https://github.com/0xPolygon/panoptichain) and [Blockscout](https://www.blockscout.com/) to observe the network.

:::info
This package is for development and testing only — **not for production use!**
:::

## Sections

### [Getting Started](./getting-started.md)

Install Kurtosis and set up your first devnet.

### [Configuration](../configuration/overview.md)

Learn how to configure your devnet deployment.

### Guides

Step-by-step guides for working with devnets in Kurtosis.

- [Interact with the devnet](../guides/interact-with-the-devnet.md)
- [Run bridge tests](../guides/run-bridge-tests.md)
- [Partial devnet redeploy](../guides/partial-devnet-redeploy.md)

### [Contributing](../contributing.md)

Help us improve the package.

### Appendix

References, troubleshooting, and more.

- [FAQ](../appendix/faq.md)
