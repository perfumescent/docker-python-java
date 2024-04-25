FROM python:3.9.2

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

RUN set -e; \

    apt-get update; \
    apt-get install -y --no-install-recommends \
        software-properties-common \
    ; \
    apt-get update; \
    apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main'; \
    apt-get update; \
    apt-get install openjdk-8-jdk -y; \
    apt-get clean; \
    rm -rf /var/tmp/* /tmp/* /var/lib/apt/lists/*

RUN java --version
RUN python --version

