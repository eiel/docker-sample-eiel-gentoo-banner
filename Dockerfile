FROM eiel/gentoo:latest@sha256:37fa56365798b922a9ab0c7a759e1cd7ac00ae9b181e2a88faed71d69652cb78
MAINTAINER Tomohiko Himura <eiel.hal@gmail.com>

WORKDIR /usr
ADD install-portage.sh .
RUN sh /install-portage.sh
RUN emerge banner 
CMD banner docker
