# VERSION 1.0
# AUTHOR:         Jerome Guibert <jguibert@gmail.com>
# DESCRIPTION:    Nexus Repository Manager
# TO_BUILD:       docker build --rm -t airdock/nexus .
# SOURCE:         https://github.com/airdock/docker-nexus
FROM airdock/oracle-jdk:jre-1.8

ARG NEXUS_VERSION=3.2.0-01

ENV NEXUS_HOME=/srv/java/nexus \
  JAVA_MAX_MEM=1200m \
  JAVA_MIN_MEM=1200m \
  EXTRA_JAVA_OPTS=""

RUN apt-get update -qq && apt-get install -y --no-install-recommends ca-certificates && \
    cd /tmp && curl -L -O https://sonatype-download.global.ssl.fastly.net/nexus/3/nexus-${NEXUS_VERSION}-unix.tar.gz  && \
    tar xvzf nexus-${NEXUS_VERSION}-unix.tar.gz -C /srv/java  && \
    ln -s /srv/java/nexus-${NEXUS_VERSION} /srv/java/nexus  && \
    chown -R java:java /srv/java && \
    /root/post-install

EXPOSE 8081

VOLUME ["/srv/java/sonatype-work"]

WORKDIR ${NEXUS_HOME}

CMD ["tini", "-g", "--", "gosu", "java:java", "/srv/java/nexus/bin/nexus", "run"]
