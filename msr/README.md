# Microservices Runtime

## Ports

The following ports are exposed by this container image.

| Port | Description |
| ---- | ----------- |
| 5555 | Primary HTTP port |
| 5543 | Primary HTTPS port |
| 9999 | Diagnostic HTTP port |

## Environment variables

The following environment variables can be used with this container.

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| EXTERNALIZE_PACKAGES | Load packages from HOST_DIR | false |
| HOST_DIR | Directory used for persistence | |
| JAVA_CUSTOM_OPTS | Additional Java options | |
| JAVA_MIN_MEM | Minimum Java heap size | 256M |
| JAVA_MAX_MEM | Maximum Java heap size | 1024M |
| LICENSE_BASE64 | License XML file base64-encoded | |
| LOG_FORMAT | Server and audit log format (json) | |
| PERSIST_CONFIGS | Persist configuration in HOST_DIR if set | true |
| PERSIST_LOGS | Persist logs in HOST_DIR if set | true |
| SAG_IS_AUDIT_STDOUT_LOGGERS | Audit loggers to write to the console (NONE, ALL, or comma-separated list) | NONE |
| SAG_IS_CONFIG_PROPERTIES | Configuration Variables Template file location | /opt/softwareag/IntegrationServer/application.properties |
| SAG_IS_CONFIG_VARIABLES_DEBUG | Include debug level messages during configuration variable initialization | false |
| SAG_IS_LICENSE_FILE | Location of the license XML file to load | /opt/softwareag/IntegrationServer/config/licenseKey.xml |
| SAG_IS_HEALTH_ENDPOINT_ACL | ACL allowed to invoke the /health endpoint | Anonymous |
| SAG_IS_METRICS_ENDPOINT_ACL | ACL allowed to invoke the /metrics endpoint | Anonymous |
| SECRET_PATH | Path to load secrets from in configuration variables | /etc/secrets |
| SERVICE_NAME | Name of a unique directory under HOST_DIR for persistence | |
| TIMEZONE | Timezone name (e.g. Europe/Paris) | UTC |

## Volumes

Using a dedicated volume is recommended for the following paths.

| Path | Description |
| ---- | ----------- |
| /opt/softwareag/IntegrationServer/cacheStore | Cache persistence |
| /opt/softwareag/IntegrationServer/db | Derby databases (embedded, audit, CSQ ...) |
| /opt/softwareag/IntegrationServer/DocumentStore | Document store (resubmit, triggers ...) |
| /opt/softwareag/IntegrationServer/logs | Server logs |
| /opt/softwareag/IntegrationServer/replicate/autodeploy | Package auto-deployment directory |
| /opt/softwareag/IntegrationServer/WmRepository4 | Legacy repository |
| /opt/softwareag/IntegrationServer/XAStore | XA transaction store |

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
| PRODUCTS | webMethods products to install | MSC |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [Microservices Runtime 10.15 documentation](https://documentation.softwareag.com/webmethods/integration_server/pie10-15/webhelp/pie-webhelp/)
