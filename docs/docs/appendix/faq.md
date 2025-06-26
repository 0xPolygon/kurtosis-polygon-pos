---
sidebar_position: 1
---

# FAQ

Find answers to common questions and troubleshooting tips for the package.

If your question isn't answered here, please check the [full documentation](../introduction/overview.md) or open an [issue](https://github.com/0xPolygon/kurtosis-polygon-pos/issues/new).

## Common Questions

### How to get the L1 RPC url?

After starting your environment, run:

```bash
echo "http://$(kurtosis port print pos el-1-geth-lighthouse rpc)"
```

### How to get the L2 RPC url?

After starting your environment, run:

```bash
kurtosis port print pos l2-el-1-bor-heimdall-validator rpc
```

This is in the case you deployed a heimdall/bor devnet, otherwise you may need to update the name of the service.

### How to send a transaction to the network?

You can use [cast](https://book.getfoundry.sh/reference/cast/cast-send):

```bash
export ETH_RPC_URL="http://$(kurtosis port print pos el-1-geth-lighthouse rpc)"
pk="0xd40311b5a5ca5eaeb48dfba5403bde4993ece8eccf4190e98e19fcd4754260ea"
cast send --private-key "$pk" --value 0.01ether $(cast address-zero)
```

where `0xd40311b5a5ca5eaeb48dfba5403bde4993ece8eccf4190e98e19fcd4754260ea` is the admin private key used to deploy Polygon PoS contracts on both L1 and L2.

### How to find logs or debug services?

To follow logs for a service:

```bash
kurtosis service logs pos l2-el-1-bor-heimdall-validator --follow
```

To open a shell in a service:

```bash
kurtosis service shell pos l2-el-1-bor-heimdall-validator
```

### How to list all the services and ports?

```bash
kurtosis enclave inspect pos
```

### How to monitor the devnet?

To monitor the devnet, add [Prometheus](https://prometheus.io/) and [Grafana](https://grafana.com/grafana/) as additional services in your configuration:

```yaml
polygon_pos_package:
  additional_services:
    - prometheus_grafana
```

After deploying, retrieve the service URLs with:

```bash
kurtosis port print pos prometheus http
kurtosis port print pos grafana http
```

Open the printed URLs in your browser to access the metrics and dashboards.

### How to clean up or remove the devnet?

To remove the enclave and all its contents:

```bash
kurtosis enclave rm --force pos
```

You can also clean all the enclaves using:

```bash
kurtosis clean --all
```

## Common Errors

### Tried pulling image 'xyz' with platform '' but failed

When deploying the devnet on an `arm64` architecture, you may encounter the following issue:

```bash
There was an error validating Starlark code
...
Caused by: Tried pulling image 'leovct/pos-contract-deployer-node-20:ed58f8a' with platform '' but failed
...
```

Some of our images are built for `amd64` only. That's why you see a warning like this at the top of the deployment:

```bash
WARNING: Container images with different architecture than expected(arm64):
> leovct/pos-contract-deployer-node-20:ed58f8a - amd64
> leovct/toolbox:0.0.8 - amd64
> leovct/pos-el-genesis-builder:96a19dd - amd64
> leovct/pos-validator-config-generator:1.2.3-0.2.0 - amd64
> leovct/e2e:9fe80e1 - amd64
```

**Solution:** Pull the image by specifying the `amd64` platform.

```bash
docker pull --platform linux/amd64 leovct/pos-contract-deployer-node-20:ed58f8a
```
