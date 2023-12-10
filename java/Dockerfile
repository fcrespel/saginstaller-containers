### Java image for all Software AG products

# Build arguments
ARG BUILDER_IMAGE="sag/installer:10.15"
ARG BASE_IMAGE="sag/base:10.15"

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
