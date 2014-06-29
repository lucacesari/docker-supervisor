# Archlinux with Supervisor

This build creates an Archlinux container with [Supervisor](http://supervisord.org/) support

## Installation
  Download a prebuilt image from the registry.
  ```
  docker pull lucacesari/supervisor
  ```

  Build it by hand.
  ```
  docker build -t="lucacesari/supervisor" github.com/lucacesari/docker-supervisor
  ```

## Usage
  * Set this container as base image in your Dockerfile.
  ```
  FROM lucacesari/supervisor
  ```

  * Configure your application.

  * Copy your Supervisor application configuration (.ini file) in **/etc/supervisor.d**.
  ```
  ADD your_application.ini /etc/supervisor.d/your_application.ini
  ```

