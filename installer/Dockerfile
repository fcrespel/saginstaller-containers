### Installer image for all webMethods products

# Build arguments
ARG OS_IMAGE="registry.access.redhat.com/ubi9/ubi"

# Builder image
FROM $OS_IMAGE

# Build arguments
ARG INSTALLER_URL="https://delivery04.dhe.ibm.com/sar/CMA/OSA/0cx80/1/IBM_webMethods_Install_Linux_x64.bin"

# Install packages
RUN yum -y install procps-ng && \
    yum clean all

# Set environment variables
ENV INSTALLER_DIR=/opt/installer \
    SAG_HOME=/opt/softwareag/ \
    SAG_JAVA_OPTIONS=-DociInstallation=true \
    JAVA_HOME=/opt/softwareag/jvm/jvm/ \
    JRE_HOME=/opt/softwareag/jvm/jvm/

# Create user and group
RUN groupadd -g 1724 sagadmin && \
    useradd -u 1724 -m -g 1724 -d $SAG_HOME -c "SoftwareAG Admin" sagadmin

# Download installer
RUN mkdir -p "$INSTALLER_DIR" && \
    curl -sSLf -o $INSTALLER_DIR/installer.bin "$INSTALLER_URL" && \
    chmod +x $INSTALLER_DIR/installer.bin && \
    chown -R 1724:1724 "$INSTALLER_DIR"

# Copy files
COPY --chown=1724:1724 target/ $INSTALLER_DIR/

# Switch to user
USER 1724

# Switch to installer dir
WORKDIR $INSTALLER_DIR

# Add arguments and files when using this image for build
ONBUILD ARG ADMIN_PASSWORD="manage"
ONBUILD ARG INSTALLER_USERNAME=""
ONBUILD ARG INSTALLER_PASSWORD=""
ONBUILD ARG RELEASE="11.1"
ONBUILD ARG PRODUCTS=""
ONBUILD ARG FIXES="spro:all"
