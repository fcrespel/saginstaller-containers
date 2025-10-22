### Broker Server image

# Arguments
ARG BUILDER_IMAGE="wm/installer:10.15"
ARG BASE_IMAGE="wm/java:10.15"

# Builder image
FROM $BUILDER_IMAGE AS builder

# Set products
ARG PRODUCTS="Broker"

# Install products
RUN ./install.sh && ./cleanup.sh

# Target image
FROM $BASE_IMAGE

# Copy files
COPY --from=builder --chown=1724:1724 $SAG_HOME/ $SAG_HOME/
COPY --chown=1724:1724 target/ $SAG_HOME/

# Environment variables
ENV BROKER_DATA_DIR="$SAG_HOME/Broker/data" \
    BROKER_CONFIG_SIZE="1G" \
    BROKER_CONFIG_PARAMS="" \
    BROKER_CONFIG_LOG_SIZE="64M" \
    BROKER_DATA_SIZE="4G" \
    BROKER_DATA_PARAMS="async,max_cache_size=512" \
    BROKER_DATA_LOG_SIZE="64M" \
    BROKER_DEFAULT_RESERVED_SIZE="64M" \
    BROKER_SERVER_PARAMS="max-memory-size=1024 max-recv-events=400" \
    BROKER_NAME="default" \
    BROKER_CLIENTGROUP="IS-JMS" \
    BROKER_PORT="6849"

# Expose ports
EXPOSE 6847 6848 6849 6850

# Initialize data directory
RUN mkdir -p "$BROKER_DATA_DIR"

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=300s --retries=5 CMD [ "/opt/softwareag/healthcheck.sh" ]

# Entrypoint script
ENTRYPOINT ["/opt/softwareag/entrypoint.sh"]
