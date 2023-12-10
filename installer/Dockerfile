### Software AG installer image

# Build arguments
ARG OS_IMAGE="registry.access.redhat.com/ubi8/ubi"

# Builder image
FROM $OS_IMAGE

# Build arguments
ARG SAG_INSTALLER_URL="https://empowersdc.softwareag.com/ccinstallers/SoftwareAGInstaller20231017-Linux_x86_64.bin"

# Install packages
RUN yum -y install procps-ng && \
    yum clean all

# Set environment variables
ENV SAG_HOME=/opt/softwareag/ \
    SAG_INSTALLER_DIR=/opt/saginstall \
    SAG_JAVA_OPTIONS=-DociInstallation=true \
    JAVA_HOME=/opt/softwareag/jvm/jvm/ \
    JRE_HOME=/opt/softwareag/jvm/jvm/

# Create user and group
RUN groupadd -g 1724 sagadmin && \
    useradd -u 1724 -m -g 1724 -d $SAG_HOME -c "SoftwareAG Admin" sagadmin

# Download installer
RUN mkdir -p "$SAG_INSTALLER_DIR" && \
    curl -sSLf -o $SAG_INSTALLER_DIR/saginstaller.bin "$SAG_INSTALLER_URL" && \
    chmod +x $SAG_INSTALLER_DIR/saginstaller.bin && \
    chown -R 1724:1724 "$SAG_INSTALLER_DIR"

# Copy files
COPY --chown=1724:1724 target/ $SAG_INSTALLER_DIR/

# Switch to user
USER 1724

# Switch to installer dir
WORKDIR $SAG_INSTALLER_DIR

# Add arguments and files when using this image for build
ONBUILD ARG ADMIN_PASSWORD="manage"
ONBUILD ARG EMPOWER_USERNAME=""
ONBUILD ARG EMPOWER_PASSWORD=""
ONBUILD ARG RELEASE="10.15"
ONBUILD ARG PRODUCTS=""
ONBUILD ARG FIXES="spro:all"
