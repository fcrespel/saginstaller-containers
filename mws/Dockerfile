### My webMethods Server image

# Arguments
ARG BUILDER_IMAGE="wm/installer:11.1"
ARG BASE_IMAGE="wm/java:11.1"

# Builder image
FROM $BUILDER_IMAGE AS builder

# Set products
ARG PRODUCTS="MwsProgramFiles"

# Install products
RUN ./install.sh && ./cleanup.sh

# Target image
FROM $BASE_IMAGE

# Copy files
COPY --from=builder --chown=1724:1724 $SAG_HOME/ $SAG_HOME/
COPY --chown=1724:1724 target/ $SAG_HOME/

# Environment variables
ENV DB_TYPE= \
    DB_URL= \
    DB_USERNAME= \
    DB_PASSWORD= \
    NODE_NAME= \
    APPS_DIR=$SAG_HOME/MWS/volumes/apps \
    CONFIGS_DIR=$SAG_HOME/MWS/volumes/configs \
    DATA_DIR=$SAG_HOME/MWS/volumes/data \
    LIBS_DIR=$SAG_HOME/MWS/volumes/libs \
    LOGS_DIR=$SAG_HOME/MWS/volumes/logs \
    PATCHES_DIR=$SAG_HOME/MWS/volumes/patches \
    MWS_WORKDIR=$SAG_HOME/MWS/server/default/bin 

# Create directories
RUN mkdir -p $APPS_DIR $CONFIGS_DIR $DATA_DIR $LIBS_DIR $LOGS_DIR $PATCHES_DIR

# Switch to work directory
WORKDIR $MWS_WORKDIR

# Expose ports
EXPOSE 8585 8586

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=300s --retries=5 CMD [ "/opt/softwareag/healthcheck.sh" ]

# Entrypoint script
ENTRYPOINT ["/opt/softwareag/entrypoint.sh"]
