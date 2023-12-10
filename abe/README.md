# Asset Build Environment

## Volumes

Using a dedicated volume is recommended for the following paths.

| Path | Description |
| ---- | ----------- |
| /src | Source directory for build (should include a build.sh file) |

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
| PRODUCTS | webMethods products to install | acdl |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [Deployer 10.15 documentation](https://documentation.softwareag.com/webmethods/deployer/wdy10-15/webhelp/wdy-webhelp/)
