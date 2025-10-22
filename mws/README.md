# My webMethods Server

## Ports

The following ports are exposed by this container image.

| Port | Description |
| ---- | ----------- |
| 8585 | HTTP port |
| 8586 | HTTPS port |

## Environment variables

The following environment variables can be used with this container.

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| APPS_DIR | Directory containing custom assets to deploy | /opt/softwareag/MWS/volumes/apps |
| CONFIGS_DIR | Directory containing additional configuration files to load | /opt/softwareag/MWS/volumes/configs |
| DATA_DIR | Directory used for persisting data | /opt/softwareag/MWS/volumes/data |
| DB_TYPE | Database type (oracle, postgresql, mysqlce, ...) | |
| DB_URL | Database JDBC URL | |
| DB_NAME | Database name | |
| DB_USERNAME | Database user name | |
| DB_PASSWORD | Database user password | |
| JAVA_MIN_MEM | Minimum Java heap size in MB | 256 |
| JAVA_MAX_MEM | Maximum Java heap size in MB | 1024 |
| LIBS_DIR | Directory containing additional libraries to load | /opt/softwareag/MWS/volumes/libs |
| LOGS_DIR | Directory used for persisting logs | /opt/softwareag/MWS/volumes/logs |
| NODE_NAME | Custom cluster node name | |
| TIMEZONE | Timezone name (e.g. Europe/Paris) | UTC |

## Volumes

Using a dedicated volume is recommended for the following paths.

| Path | Description |
| ---- | ----------- |
| /opt/softwareag/MWS/volumes | Persistence root directory |

## Build arguments

The following arguments can be used when building the container image.

| Argument | Description | Default value |
| -------- | ----------- | ------------- |
| BASE_IMAGE | Base image | wm/java:10.15 |
| BUILDER_IMAGE | Builder image | wm/installer:10.15 |
| ADMIN_PASSWORD | Administrator password | manage |
| INSTALLER_USERNAME | Installer username | |
| INSTALLER_PASSWORD | Installer password | |
| RELEASE | webMethods release | 10.15 |
| PRODUCTS | webMethods products to install | MwsProgramFiles |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [My webMethods Server 10.15 documentation](https://www.ibm.com/docs/en/webmethods-integration/wm-my-webmethods-server/10.15.0)
