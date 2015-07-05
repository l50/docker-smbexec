smbexec Dockerfile
===================

[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

This repository contains a **Dockerfile** of [smbexec](https://github.com/pentestgeek/smbexec) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/l505/smbexec) published to the public [Docker Registry](https://index.docker.io/).


### Image Size
[![](https://badge.imagelayers.io/l505/smbexec:latest.svg)](https://imagelayers.io/?images=l505/smbexec:latest 'Get your own badge on imagelayers.io')

### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/l505/smbexec) from public [Docker Registry](https://index.docker.io/): `docker pull l505/smbexec`

#### Alternatively, build an image from Dockerfile
```bash
$ docker build -t l505/smbexec github.com/l50/docker-smbexec
```
### Usage
```bash
$ docker run -t -i l50/smbexec /opt/smbexec/smbexec.rb
```

