### Base image for all webMethods products

# Build arguments
ARG OS_IMAGE="registry.access.redhat.com/ubi8/ubi"

# Target image
FROM $OS_IMAGE

# Install updates
RUN yum -y update && \
    yum clean all

# Install packages
RUN yum -y install file gettext hostname initscripts iproute jq less libxslt net-tools procps-ng rsync unzip which && \
    yum clean all

# Set environment variables
ENV SAG_HOME=/opt/softwareag \
    WM_HOME=/opt/softwareag \
    LANG=en_US.utf8

# Create user and group
RUN groupadd -g 1724 sagadmin && \
    useradd -u 1724 -m -g 1724 -d $SAG_HOME -c "SoftwareAG Admin" sagadmin && \
    cp --remove-destination /usr/share/zoneinfo/UTC /etc/localtime && \
    chmod 777 /etc/localtime

# Switch to user
USER 1724

# Switch to install directory
WORKDIR $SAG_HOME
