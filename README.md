# Nexus Repository Manager [![](https://badge.imagelayers.io/airdock/nexus:latest.svg)](https://imagelayers.io/?images=airdock/nexus:latest 'Get your own badge on imagelayers.io')

Docker image for Nexus Repository Manager

WORK IN PROGRESS

This repository contains **Dockerfile** for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/airdock/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


> Name: airdock/nexus:2.12 (or airdock/nexus:latest) 

**Dependency**: airdock/oracle-jdk:latest

**Few links**:

 - [Nexus Repository Manager](https://books.sonatype.com/nexus-book/index.html)


# Usage

You should have already install [Docker](https://www.docker.com/).

Execute:

	'docker run -d -p 8081:8081 airdock/nexus:latest '

Or:

	'docker run -d -p 8081:8081 -v /data/sonatype-work:/srv/java/nexus/sonatype-work airdock/nexus:latest '

 Where /data/sonatype-work is your local nexus configuration
 
By default:
- Console: http://localhost:8081/nexus
- The default administrator username and password combination is admin and admin123


Please do [post install configuration](https://books.sonatype.com/nexus-book/reference/install-sect-repoman-post-install.html) !!



# Change Log

## Tag 2.12 and latest (current)

- add install under /srv/java/nexus (NEXUS_HOME)
- use MIT license


# Build


- Install "make" utility, and execute: `make build`
- Or execute: 'docker build -t airdock/nexus:latest --rm .'

See [Docker Project Tree](https://github.com/airdock-io/docker-base/wiki/Docker-Project-Tree) for more details.


# MIT License

```
The MIT License (MIT)

Copyright (c) 2015 Airdock

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```