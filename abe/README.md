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
| BASE_IMAGE | Base image | wm/java:10.15 |
| BUILDER_IMAGE | Builder image | wm/installer:10.15 |
| ADMIN_PASSWORD | Administrator password | manage |
| INSTALLER_USERNAME | Installer username | |
| INSTALLER_PASSWORD | Installer password | |
| RELEASE | webMethods release | 10.15 |
| PRODUCTS | webMethods products to install | acdl |
| FIXES | webMethods fixes to install | spro:all |

## Useful links

- [Deployer 10.15 documentation](https://www.ibm.com/docs/en/webmethods-integration/webmethods-deployer/10.15.0)
