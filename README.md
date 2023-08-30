# UECda-server-docker
UECda server running in Docker

## Setup
To set up the server on macOS, install Xquartz and run the following commands. You will need to restart Xquartz for settings to take effect.

```
$ brew install --cask xquartz
$ defaults write org.macosforge.xquartz.X11 no_auth -bool false
$ defaults write org.macosforge.xquartz.X11 nolisten_tcp -bool false
$ xhost + localhost
$ xhost -
```

## Run
To run the server, execute the following commands:

```
$ docker build -t uecda-java-devkit .
$ docker run -it --rm -e DISPLAY=host.docker.internal:0.0 uecda-java-devkit
```