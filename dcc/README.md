# Database Component Configurator

## Build arguments

The following arguments can be used when building the container image.

| Argument | Description | Default value |
| -------- | ----------- | ------------- |
| BASE_IMAGE | Base image | sag/java:10.15 |
| BUILDER_IMAGE | Builder image | sag/installer:10.15 |
| ADMIN_PASSWORD | Administrator password | manage |
| EMPOWER_USERNAME | Empower username | |
| EMPOWER_PASSWORD | Empower password | |
| RELEASE | webMethods release | 10.15 |
| PRODUCTS | webMethods products to install | DatabaseComponentConfigurator |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [Database Component Configurator 10.15 documentation](https://documentation.softwareag.com/webmethods/wmsuites/wmsuite10-15/webhelp/install-upgrade-webhelp/install-upgrade-compendium/to-install_products_3.html)
