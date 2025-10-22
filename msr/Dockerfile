### Microservices Runtime image

# Arguments
ARG BUILDER_IMAGE="wm/installer:11.1"
ARG BASE_IMAGE="wm/java:11.1"

# Builder image
FROM $BUILDER_IMAGE AS builder

# Set products
ARG PRODUCTS="MSC"

# Install products
RUN ./install.sh && ./cleanup.sh

# Target image
FROM $BASE_IMAGE

# Copy files
COPY --from=builder --chown=1724:1724 $SAG_HOME/ $SAG_HOME/
COPY --chown=1724:1724 target/ $SAG_HOME/

# Switch to root directory
WORKDIR /

# Expose ports
EXPOSE 5555 5543 9999

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=300s --retries=5 CMD [ "/opt/softwareag/healthcheck.sh" ]

# Entrypoint script
ENTRYPOINT ["/opt/softwareag/entrypoint.sh"]
