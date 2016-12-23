# Nexus Repository Manager [![](https://images.microbadger.com/badges/image/airdock/nexus:latest.svg)](https://microbadger.com/images/airdock/nexus:latest "Get your own image badge on microbadger.com")

Docker image for [Nexus Repository Manager](http://www.sonatype.org/nexus/).

This repository contains **Dockerfile** for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/airdock/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


**Features**:
- install Nexus Community Project
- run nexus with java user account
- integrate tini process Manager


> Name: airdock/nexus

**Dependency**: airdock/oracle-jdk:jre-1.8

**Few links**:

 - [Nexus Repository Manager](https://books.sonatype.com/nexus-book/index.html)

# Tags

- 3.2, latest: 3.2.0-01 [![](https://images.microbadger.com/badges/image/airdock/nexus:latest.svg)](https://microbadger.com/images/airdock/nexus:latest "Get your own image badge on microbadger.com")
- 2.14: 2.14.2-01 [![](https://images.microbadger.com/badges/image/airdock/nexus:2.14.svg)](https://microbadger.com/images/airdock/nexus:2.14 "Get your own image badge on microbadger.com")
- 2.13: 2.13.0-01 [![](https://images.microbadger.com/badges/image/airdock/nexus:2.13.svg)](https://microbadger.com/images/airdock/nexus:2.13 "Get your own image badge on microbadger.com")
- 2.12, 2.12.0-01: 2.12.0-01 [![](https://images.microbadger.com/badges/image/airdock/nexus:2.12.0-01.svg)](https://microbadger.com/images/airdock/nexus:2.12.0-01 "Get your own image badge on microbadger.com")

# Usage

You should have already install [Docker](https://www.docker.com/).

Please do [post install configuration](https://books.sonatype.com/nexus-book/reference/install-sect-repoman-post-install.html) !!

## Launch for testing
Execute:

```
	docker run -d -p 8081:8081 airdock/nexus:latest
```

Console: http://localhost:8081/nexus
The default administrator username and password combination is admin and admin123


## Launch with external configuration

```
	docker run -d -p 8081:8081 -v /data/sonatype-work:/srv/java/sonatype-work airdock/nexus:latest
```

 Where /data/sonatype-work is your local nexus configuration




# Change Log

## For all tag:

- run process with java user account
- integrate tini process Manager
- add install under /srv/java/nexus (NEXUS_HOME)
- use MIT license
- use /srv/java/sonatype-work
- based on airdock:/oracle-jdk:jre-1.8 (latest jre 1.8)

## 3.2
- install nexus 3.2.0-01

## 2.14
- install nexus 2.14.2-01

## 2.13
- install nexus 2.13.0-01

## 2.12 and 2.12.0-01
- install nexus 2.12.0-01
- based on airdock:/oracle-jdk:jre-8u74


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
