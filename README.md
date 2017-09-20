# alpine-nginx-php-fpm [![Docker Pulls](https://img.shields.io/docker/pulls/dockage/alpine-nginx-php-fpm.svg?style=flat)](https://hub.docker.com/r/dockage/alpine-nginx-php-fpm/) [![Docker Stars](https://img.shields.io/docker/stars/dockage/alpine-nginx-php-fpm.svg?style=flat)](https://hub.docker.com/r/dockage/alpine-nginx-php-fpm/) [![MicroBadger](https://images.microbadger.com/badges/image/dockage/alpine-nginx-php-fpm.svg)](https://microbadger.com/images/dockage/alpine-nginx-php-fpm) [![Docker Automated build](https://img.shields.io/docker/automated/dockage/alpine-nginx-php-fpm.svg?style=flat)](https://hub.docker.com/r/dockage/alpine-nginx-php-fpm/)
Docker Nginx &amp; PHP-FPM image built on Alpine Linux

## Contributing

If you find this image useful here's how you can help:

- Send a pull request with your awesome features and bug fixes
- Help users resolve their [issues](../../issues?q=is%3Aopen+is%3Aissue).

## Issues

Before reporting your issue please try updating Docker to the latest version and check if it resolves the issue. Refer to the Docker [installation guide](https://docs.docker.com/installation) for instructions.

SELinux users should try disabling SELinux using the command `setenforce 0` to see if it resolves the issue.

If the above recommendations do not help then [report your issue](../../issues/new) along with the following information:

- Output of the `docker vers6` and `docker info` commands
- The `docker run` command or `docker-compose.yml` used to start the image. Mask out the sensitive bits.
- Please state if you are using [Boot2Docker](http://www.boot2docker.io), [VirtualBox](https://www.virtualbox.org), etc.

# Getting started

## Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/dockage/alpine-nginx-php-fpm) and is the recommended method of installation.

```bash
docker pull dockage/alpine-nginx-php-fpm:latest
```

Alternatively you can build the image yourself.

```bash
docker build -t dockage/alpine-nginx-php-fpm github.com/dockage/alpine-nginx-php-fpm
```

## Shell Access

For debugging and maintenance purposes you may want access the containers shell. If you are using Docker version `1.3.0` or higher you can access a running containers shell by starting `bash` using `docker exec`:

```bash
docker exec -it alpine-nginx-php-fpm sh