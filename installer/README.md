# Installer image

This directory contains the webMethods Installer.

It is meant to be used as a builder image for multi-stage builds of products.

## Build arguments

The following arguments can be used when building the container image.

| Argument | Description | Default value |
| -------- | ----------- | ------------- |
| OS_IMAGE | Base OS image | registry.access.redhat.com/ubi9/ubi |
| INSTALLER_URL | Installer URL | https://delivery04.dhe.ibm.com/sar/CMA/OSA/0cx80/1/IBM_webMethods_Install_Linux_x64.bin |

The following arguments can be used when using this image as a base image (onbuild).

| Argument | Description | Default value |
| -------- | ----------- | ------------- |
| ADMIN_PASSWORD | Administrator password | manage |
| INSTALLER_USERNAME | Installer username | |
| INSTALLER_PASSWORD | Installer password | |
| RELEASE | webMethods release | 10.15 |
| PRODUCTS | webMethods products to install | |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [Installer 10.15 documentation](https://www.ibm.com/docs/en/webmethods-integration/webmethods-installer/10.15.0)
