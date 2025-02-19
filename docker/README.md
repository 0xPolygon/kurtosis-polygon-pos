# Docker Images

## Polygon PoS Contract Deployer

- [Docker Hub](https://hub.docker.com/r/leovct/pos-contract-deployer)

```bash
# node-16
docker build --tag leovct/pos-contract-deployer:node-16 --file pos-contract-deployer-node-16.Dockerfile .
docker push leovct/pos-contract-deployer:node-16

# node-20
docker build --tag leovct/pos-contract-deployer:node-20 --file pos-contract-deployer-node-20.Dockerfile .
docker push leovct/pos-contract-deployer:node-20
```

## Polygon PoS EL Genesis Builder

- [Docker Hub](https://hub.docker.com/r/leovct/pos-el-genesis-builder)

```bash
docker build --tag leovct/pos-el-genesis-builder:node-16 --file pos-el-genesis-builder.Dockerfile .
docker push leovct/pos-el-genesis-builder:node-16
```

## Polygon PoS Validator Config Generator

- [Docker Hub](https://hub.docker.com/r/leovct/pos-validator-config-generator)

```bash
heimdall_version="1.2.0"
heimdall_v2_version="22a3f1d"
tag="${heimdall_version}-${heimdall_v2_version}"
docker build \
  --build-arg HEIMDALL_VERSION="${heimdall_version}" \
  --build-arg HEIMDALL_V2_VERSION="${heimdall_v2_version}" \
  --tag "leovct/pos-validator-config-generator:${tag}" \
  --file pos-validator-config-generator.Dockerfile \
  .
docker push "leovct/pos-validator-config-generator:${tag}"
```

## Heimdall V2

Docker Hub:

- [heimdall-v2](https://hub.docker.com/r/leovct/heimdall-v2)
- [bor-modified-for-heimdall-v2](https://hub.docker.com/r/leovct/bor-modified-for-heimdall-v2)

```bash
# heimdall-v2
git clone git@github.com:0xPolygon/heimdall-v2.git
pushd heimdall-v2
tag="22a3f1d" # 19/02/2025
git checkout "${tag}"
docker build --tag "leovct/heimdall-v2:${tag}" --file Dockerfile .
docker push "leovct/heimdall-v2:${tag}"

# bor-modified-for-heimdall-v2
git clone --branch raneet10/heimdallv2-changes git@github.com:maticnetwork/bor.git
pushd bor
tag="1724778" # 11/02/2025
git checkout "${tag}"

eval $(ssh-agent -s)
ssh-add $HOME/.ssh/id_ed25519
docker build \
  --tag "leovct/bor-modified-for-heimdall-v2:${tag}" \
  --file Dockerfile \
  --ssh default=$SSH_AUTH_SOCK \
  .
docker push "leovct/bor-modified-for-heimdall-v2:${tag}"
```
