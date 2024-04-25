FROM python:3.9.2

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=DontWarn

# You are on Debian 10 (buster), but the link you showed is for Debian 9 (stretch).OpenJDK is on version 11 for Buster and OpenJDK 8 is not available.
RUN set -e; \
    apt-get update; \
    apt-get install openjdk-11-jdk -y; \
    apt-get clean; \
    rm -rf /var/tmp/* /tmp/* /var/lib/apt/lists/*

RUN java --version
RUN python --version

