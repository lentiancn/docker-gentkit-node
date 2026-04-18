#!/bin/bash
#
# MIT License
#
# https://github.com/lentiancn/docker-gentkit-node/blob/main/LICENSE
#
set -e

NODE_URL="https://nodejs.org/${NODE_SOURCE_PATH}"

curl -fsSL "${NODE_URL}" -o /tmp/nodetmpfs.${NODE_SOURCE_FORMAT}

# Extract files to node home
tar -C /usr/local/node -xf /tmp/nodetmpfs.${NODE_SOURCE_FORMAT} --strip-components=1
