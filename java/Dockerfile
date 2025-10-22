### Java image for all webMethods products

# Build arguments
ARG BUILDER_IMAGE="wm/installer:10.15"
ARG BASE_IMAGE="wm/base:10.15"

# Builder image
FROM $BUILDER_IMAGE AS builder

# Set products
ARG PRODUCTS="sjp"

# Install products
RUN ./install.sh && ./cleanup.sh light

# Target image
FROM $BASE_IMAGE

# Set environment variables
ENV JAVA_HOME=$SAG_HOME/jvm/jvm \
    JRE_HOME=$SAG_HOME/jvm/jvm \
    PATH=$PATH:$SAG_HOME/jvm/jvm/bin

# Copy files from builder
COPY --from=builder --chown=1724:1724 $SAG_HOME/jvm/ $SAG_HOME/jvm/
