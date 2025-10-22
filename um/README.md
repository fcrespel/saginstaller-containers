# Universal Messaging

## Ports

The following ports are exposed by this container image.

| Port | Description |
| ---- | ----------- |
| 9000 | Instance port |
| 9200 | Metrics port |

## Environment variables

The following environment variables can be used with this container.

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| BASIC_AUTH_ENABLE | Enable basic authentication (Y/N) | N |
| BASIC_AUTH_MANDATORY | Make basic authentication mandatory (Y/N) | N |
| INIT_JAVA_MEM_SIZE | Minimum Java heap size in MB | 1024 |
| LICENSE_BASE64 | License XML file base64-encoded | |
| LOG_FRAMEWORK | Configure logging framework (log4j2) | |
| MAX_DIRECT_MEM_SIZE | Maximum direct memory size in GB | 1G |
| MAX_JAVA_MEM_SIZE | Maximum Java heap size in MB | 1024 |
| REALM_NAME | Realm name | umserver |
| STARTUP_COMMAND | Additional command to run during startup | |
| TIMEZONE | Timezone name (e.g. Europe/Paris) | UTC |

## Volumes

Using a dedicated volume is recommended for the following paths.

| Path | Description |
| ---- | ----------- |
| /opt/softwareag/common/conf | Authentication configuration |
| /opt/softwareag/UniversalMessaging/server/umserver/data | Server data |
| /opt/softwareag/UniversalMessaging/server/umserver/logs | Server logs |
| /opt/softwareag/UniversalMessaging/server/umserver/licence/licence.xml | License XML file |

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
| PRODUCTS | webMethods products to install | NUMRealmServer |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [Universal Messaging 10.15 documentation](https://www.ibm.com/docs/en/webmethods-integration/wm-universal-messaging/10.15.0)
