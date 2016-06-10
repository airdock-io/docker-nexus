# VERSION 1.0
# AUTHOR:         Jerome Guibert <jguibert@gmail.com>
# DESCRIPTION:    Nexus Repository Manager
# TO_BUILD:       docker build --rm -t airdock/nexus .
# SOURCE:         https://github.com/airdock/docker-nexus
FROM airdock/oracle-jdk:jre-1.8

ENV NEXUS_HOME /srv/java/nexus

RUN cd /tmp && \
    curl -L -O http://download.sonatype.com/nexus/oss/nexus-2.13.0-01-bundle.tar.gz  && \
    tar xvzf nexus-2.13.0-01-bundle.tar.gz -C /srv/java  && \
    ln -s /srv/java/nexus-2.13.0-01 /srv/java/nexus  && \
    chown -R java:java /srv/java && \
    /root/post-install

EXPOSE 8081

WORKDIR /srv/java/nexus

CMD ["gosu", "java:java", "/srv/java/nexus/bin/nexus", "console"]
