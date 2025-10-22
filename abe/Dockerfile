### Asset Build Environment image

# Arguments
ARG BUILDER_IMAGE="wm/installer:11.1"
ARG BASE_IMAGE="wm/java:11.1"

# Builder image
FROM $BUILDER_IMAGE AS builder

# Set products
ARG PRODUCTS="acdl"

# Install products
RUN ./install.sh && ./cleanup.sh

# Target image
FROM $BASE_IMAGE

# Copy files
COPY --from=builder --chown=1724:1724 $SAG_HOME/ $SAG_HOME/

# Environment variables
ENV ABE_HOME=$SAG_HOME/common/AssetBuildEnvironment \
    PATH=$PATH:$SAG_HOME/common/AssetBuildEnvironment/bin

# Switch to source directory
WORKDIR /src

# Main command
CMD build.sh
