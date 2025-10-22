### Database Component Configurator image

# Arguments
ARG BUILDER_IMAGE="wm/installer:11.1"
ARG BASE_IMAGE="wm/java:11.1"

# Builder image
FROM $BUILDER_IMAGE AS builder

# Set products
ARG PRODUCTS="DatabaseComponentConfigurator"

# Install products
RUN ./install.sh && ./cleanup.sh

# Target image
FROM $BASE_IMAGE

# Copy files
COPY --from=builder --chown=1724:1724 $SAG_HOME/ $SAG_HOME/

# Entrypoint script
ENTRYPOINT ["/opt/softwareag/common/db/bin/dbConfigurator.sh"]
