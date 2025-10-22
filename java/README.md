# Java image

This directory contains the Java image used by all subsequent images.

## Build arguments

The following arguments can be used when building the container image.

| Argument | Description | Default value |
| -------- | ----------- | ------------- |
| BASE_IMAGE | Base image | wm/base:11.1 |
| BUILDER_IMAGE | Builder image | wm/installer:11.1 |
| ADMIN_PASSWORD | Administrator password | manage |
| INSTALLER_USERNAME | Installer username | |
| INSTALLER_PASSWORD | Installer password | |
| RELEASE | webMethods release | 11.1 |
| PRODUCTS | webMethods products to install | sjp |
| FIXES | webMethods fixes to install | spro:all |
