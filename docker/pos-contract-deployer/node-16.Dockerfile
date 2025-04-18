FROM node:16-bookworm
LABEL description="Polygon PoS contracts deployment image (node-16)"
LABEL author="devtools@polygon.technology"

ARG MATIC_CONTRACTS_BRANCH="mardizzone/node-16"
ARG MATIC_CONTRACTS_TAG_OR_COMMIT_SHA="c4d8e12"

ENV TRUFFLE_VERSION="5.11.5"
ENV DEFAULT_EL_CHAIN_ID="4927"

# Prepare MATIC smart contracts for deployment by compiling them.
# For reference: https://github.com/maticnetwork/contracts/tree/v0.3.11/deploy-migrations
# 🚨 Note: it installs jq v1.6 which does not correctly handle large numbers!
# root@cbd6ec04fded:/opt/contracts# echo "2105474802501957777" | jq '.'
# 2105474802501958000
WORKDIR /opt/contracts
RUN apt-get update \
  && apt-get install --no-install-recommends --yes jq \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && npm install --global truffle@${TRUFFLE_VERSION} \
  && git clone --branch ${MATIC_CONTRACTS_BRANCH} https://github.com/maticnetwork/contracts.git . \
  && git checkout ${MATIC_CONTRACTS_TAG_OR_COMMIT_SHA} \
  && npm install \
  && npm run template:process -- --bor-chain-id ${DEFAULT_EL_CHAIN_ID} \
  && truffle compile
