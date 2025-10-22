# Broker

## Ports

The following ports are exposed by this container image.

| Port | Description |
| ---- | ----------- |
| 6847 | Broker TLS port with client certificate authentication |
| 6848 | Broker TLS port |
| 6849 | Broker primary port |
| 6850 | Broker monitor |

## Environment variables

The following environment variables can be used with this container.

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| BROKER_DATA_DIR | Directory for data and config stores | /opt/softwareag/Broker/data |
| BROKER_CONFIG_SIZE | Config store size | 1G |
| BROKER_CONFIG_PARAMS | Config store params | |
| BROKER_CONFIG_LOG_SIZE | Config store log size | 64M |
| BROKER_DATA_SIZE | Data store size | 4G |
| BROKER_DATA_PARAMS | Data store params | async,max_cache_size=512 |
| BROKER_DATA_LOG_SIZE | Data store log size | 64M |
| BROKER_DEFAULT_RESERVED_SIZE | Default reserved size for config and data store files | 64M |
| BROKER_SERVER_PARAMS | Server awbroker.cfg config as key=value key=value ... | max-memory-size=1024 max-recv-events=400 |
| BROKER_NAME | Broker name | default |
| BROKER_CLIENTGROUP | Broker client group name | IS-JMS |
| BROKER_HOSTNAME | External Broker server host name | $(hostname -f) |
| BROKER_HOSTNAME_INTERNAL | Internal Broker server host name | $(hostname -f) |
| BROKER_PORT | External Broker server port | 6849 |
| BROKER_PORT_INTERNAL | Internal Broker server port | 6849 |
| LICENSE_BASE64 | License XML file base64-encoded | |
| TIMEZONE | Timezone name (e.g. Europe/Paris) | UTC |

## Volumes

Using a dedicated volume is recommended for the following paths.

| Path | Description |
| ---- | ----------- |
| /opt/softwareag/Broker/data | Directory for data and config stores |

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
| PRODUCTS | webMethods products to install | Broker |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [Broker 10.5 documentation](https://www.ibm.com/docs/en/webmethods-integration/webmethods-broker/10.15.0)
