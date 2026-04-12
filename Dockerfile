#
# MIT License
#
# https://github.com/lentiancn/docker-gentkit-node/blob/main/LICENSE
#

FROM gentkit/alpine:3.23.3

# Image metadata labels following OCI Image Format Specification
LABEL maintainer="Len <lentiancn@126.com>" \
      description="A Docker image for the Node.js environment." \
      org.opencontainers.image.title="Node.js on Docker" \
      org.opencontainers.image.description="A Docker image for the Node.js environment." \
      org.opencontainers.image.vendor="GentKit" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/lentiancn/docker-gentkit-node" \
      org.opencontainers.image.version="${IMAGE_VERSION}" \
      org.opencontainers.image.created="${IMAGE_BUILD_DATE}"

RUN set -eu && \
    apk add --no-cache libstdc++ && \
    wget https://unofficial-builds.nodejs.org/download/release/v20.20.2/node-v20.20.2-linux-x64-musl.tar.xz && \
    tar -xJf node-v20.20.2-linux-x64-musl.tar.xz -C /usr/local --strip-components=1 && \
    rm -rf node-v20.20.2-linux-x64-musl.tar.xz

# Set the working directory to /root for subsequent instructions
WORKDIR /root
