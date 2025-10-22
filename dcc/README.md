# Database Component Configurator

## Build arguments

The following arguments can be used when building the container image.

| Argument | Description | Default value |
| -------- | ----------- | ------------- |
| BASE_IMAGE | Base image | wm/java:11.1 |
| BUILDER_IMAGE | Builder image | wm/installer:11.1 |
| ADMIN_PASSWORD | Administrator password | manage |
| INSTALLER_USERNAME | Installer username | |
| INSTALLER_PASSWORD | Installer password | |
| RELEASE | webMethods release | 11.1 |
| PRODUCTS | webMethods products to install | DatabaseComponentConfigurator |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [Installer 11.1 documentation](https://www.ibm.com/docs/en/webmethods-integration/webmethods-installer/11.1.0)
