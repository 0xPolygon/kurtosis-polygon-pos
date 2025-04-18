FROM node:20-bookworm
LABEL description="Polygon PoS contracts deployment image (node-20)"
LABEL author="devtools@polygon.technology"

ARG POS_CONTRACTS_BRANCH="anvil-pos"
ARG POS_CONTRACTS_TAG_OR_COMMIT_SHA="ed58f8a"

ENV FOUNDRY_VERSION="stable"
ENV DEFAULT_EL_CHAIN_ID="4927"

# Prepare Polygon PoS smart contracts for deployment by compiling them.
# For reference: https://github.com/0xPolygon/pos-contracts
# 🚨 Note: it installs jq v1.6 which does not correctly handle large numbers!
# root@cbd6ec04fded:/opt/contracts# echo "2105474802501957777" | jq '.'
# 2105474802501958000
WORKDIR /opt/pos-contracts
RUN apt-get update \
  && apt-get install --no-install-recommends --yes jq \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  # Install foundry (stable - 20/12/2024).
  && curl --silent --location --proto "=https" https://foundry.paradigm.xyz | bash \
  && /root/.foundry/bin/foundryup --install ${FOUNDRY_VERSION} \
  && cp /root/.foundry/bin/* /usr/local/bin \
  # Prepare pos contracts.
  && git clone --branch ${POS_CONTRACTS_BRANCH} https://github.com/0xPolygon/pos-contracts . \
  && git checkout ${POS_CONTRACTS_TAG_OR_COMMIT_SHA} \
  # Remove [etherscan] section from foundry.toml
  && sed -i '/^\[etherscan\]/,/^$/d' foundry.toml \
  && npm install \
  && npm run template:process -- --bor-chain-id ${DEFAULT_EL_CHAIN_ID} \
  && npm run generate:interfaces \
  && forge build
