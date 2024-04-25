FROM python:3.9.2

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

RUN set -e; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        software-properties-common \
    ; \
    apt-get install -y --no-install-recommends openjdk-8-jdk; \
    apt-get clean; \
    rm -rf /var/tmp/* /tmp/* /var/lib/apt/lists/*

RUN java --version
RUN python --version

