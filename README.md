# SoftwareAG containers (using installer)

This repository contains templates to build containers for some **SoftwareAG webMethods** products:
- Asset Build Environment
- Broker
- Database Component Configurator
- Microservices Runtime
- My webMethods Server
- Universal Messaging

It uses the **SoftwareAG installer** to create custom images with some additional features, that aim to be **production-ready** as much as possible. At this time, they have only been tested with the webMethods 10.15 release.

An alternate approach to building container images using **Command Central** templates is also available in the [fcrespel/sagdevops-containers](https://github.com/fcrespel/sagdevops-containers) repository.

These tools are provided as-is and without warranty or support. They do not constitute part of the Software AG product suite, and are not endorsed by SoftwareAG. Users are free to use, fork and modify them, subject to the license agreement. For official containers, see https://containers.softwareag.com.

## Prerequisites

To build and run container images, make sure to install [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/) and have sufficient RAM available.

You will also need Empower credentials with access to the products you want to build.

## Building

Edit the `.env` file to adjust the webMethods release version and fill in your Empower credentials (be careful, never commit them to GitHub!). Alternatively, you may also set them in your terminal or CI tool with `export EMPOWER_USERNAME=your-username` and `export EMPOWER_PASSWORD=your-password`.

Then execute `docker compose build` to build the following images:

- `installer`: this image includes the SoftwareAG Installer in `/opt/saginstaller`, and is used to build product-specific images.
- `base`: a simple RedHat UBI 8 base layer with the `/opt/softwareag` install directory and `sagadmin` system user.
- `java`: an image with the JVM provided with SoftwareAG products, built on top of the `base` image. This image is used to share the JVM layer between subsequent product images.
- `abe`: Asset Build Environment
- `broker`: Broker Server
- `dcc`: Database Component Configurator
- `msr`: Microservices Runtime (with CloudStreams, JDBC/Kafka Adapters and Monitor)
- `mws`: My webMethods Server
- `um`: Universal Messaging

Each directory contains a `Dockerfile` using multi-stage build to provision the product using the `installer` image, then copy the installation directory on top of the `java` image. The latest fixes are applied by default. The `target/entrypoint.sh` script starts the main product runtime.

Please refer to each `README.md` file for more details about ports, environment variables, volumes and useful links.

## Running

Once a product image is built, you may run it anywhere with Docker or container orchestration tools like Kubernetes. You will also probably want to build additional images on top of it, e.g. to customize configuration, add files, or add packages on Integration Server.
