# Software AG Installer image

This directory contains the Software AG Installer.

It is meant to be used as a builder image for multi-stage builds of products.

## Build arguments

The following arguments can be used when building the container image.

| Argument | Description | Default value |
| -------- | ----------- | ------------- |
| OS_IMAGE | Base OS image | registry.access.redhat.com/ubi8/ubi |
| SAG_INSTALLER_URL | Software AG Installer URL | https://empowersdc.softwareag.com/ccinstallers/SoftwareAGInstaller20231017-Linux_x86_64.bin |

The following arguments can be used when using this image as a base image (onbuild).

| Argument | Description | Default value |
| -------- | ----------- | ------------- |
| ADMIN_PASSWORD | Administrator password | manage |
| EMPOWER_USERNAME | Empower username | |
| EMPOWER_PASSWORD | Empower password | |
| RELEASE | webMethods release | 10.15 |
| PRODUCTS | webMethods products to install | |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [Software AG Installer 10.15 documentation](https://documentation.softwareag.com/a_installer_and_update_manager/wir10-15/webhelp/wir-webhelp/)
