### Universal Messaging image

# Arguments
ARG BUILDER_IMAGE="wm/installer:10.15"
ARG BASE_IMAGE="wm/java:10.15"

# Builder image
FROM $BUILDER_IMAGE AS builder

# Set products
ARG PRODUCTS="NUMRealmServer"

# Install products
RUN ./install.sh && ./cleanup.sh

# Target image
FROM $BASE_IMAGE

# Copy files
COPY --from=builder --chown=1724:1724 $SAG_HOME/ $SAG_HOME/
COPY --chown=1724:1724 target/ $SAG_HOME/

# Environment variables
ENV	INSTANCE_NAME=umserver \
    UM_HOME=$SAG_HOME/UniversalMessaging
ENV PORT=9000 \
    JMX_AGENT_PORT=9200 \
    DATA_DIR=$UM_HOME/server/$INSTANCE_NAME/data \
    LIC_DIR=$UM_HOME/server/$INSTANCE_NAME/licence \
    LOG_DIR=$UM_HOME/server/$INSTANCE_NAME/logs \
    TOOLS_DIR=$UM_HOME/tools \
    USERS_DIR=$SAG_HOME/common/conf \
    SERVER_COMMON_CONF_FILE=Server_Common.conf \
    CUSTOM_SERVER_COMMON_CONF_FILE=Custom_Server_Common.conf
ENV PATH=$TOOLS_DIR/runner/:$PATH

# Run configuration script
RUN $UM_HOME/tools/docker/configure.sh && \
    mkdir -p $LOG_DIR $LIC_DIR

# Expose ports
EXPOSE $PORT $JMX_AGENT_PORT

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=300s --retries=5 CMD [ "/opt/softwareag/healthcheck.sh" ]

# Entrypoint script
ENTRYPOINT ["/opt/softwareag/entrypoint.sh"]
