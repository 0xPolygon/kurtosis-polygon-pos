ARG HEIMDALL_VERSION=1.2.0
ARG HEIMDALL_V2_VERSION=e0a87ca
FROM 0xpolygon/heimdall:${HEIMDALL_VERSION} AS heimdall
FROM 0xpolygon/heimdall-v2:${HEIMDALL_V2_VERSION} AS heimdall-v2


FROM golang:1.22 AS polycli-builder
LABEL description="Polycli builder image"
LABEL author="devtools@polygon.technology"
WORKDIR /opt/polygon-cli
RUN git clone --branch "v0.1.74" https://github.com/maticnetwork/polygon-cli.git . \
  && make build


FROM debian:bookworm-slim
LABEL description="CL genesis builder image"
LABEL author="devtools@polygon.technology"

ENV DEFAULT_CL_CHAIN_ID="heimdall-4927"
ENV CL_CLIENT_CONFIG_PATH="/etc/cl"

COPY --from=heimdall /usr/bin/heimdallcli /usr/bin/heimdalld /usr/local/bin/
COPY --from=heimdall-v2 /usr/bin/heimdalld /usr/local/bin/heimdalld-v2
COPY --from=polycli-builder /opt/polygon-cli/out/polycli /usr/local/bin/polycli
COPY --from=polycli-builder /opt/polygon-cli/bindings /opt/bindings

RUN apt-get update \
  && apt-get install --yes --no-install-recommends jq xxd \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && heimdalld init --home "${CL_CLIENT_CONFIG_PATH}" --chain-id "${DEFAULT_CL_CHAIN_ID}"
