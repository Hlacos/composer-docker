# Composer Docker image

## Supported tags

* latest
* 7.2
* 7.2.1
* 7.4

## What is Composer?

Composer is a tool for dependency management in PHP.

> https://getcomposer.org

## How to use this image

```console
docker run --volume </local/path>:/project hlacos/composer[:tag] [<options>]
```

Example:
```console
docker run --volume /project/path:/project hlacos/composer composer install
```

## Changelog

7.2.1: Added gd, mysql and mongo php extensions
