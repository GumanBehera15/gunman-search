FROM docker.io/searxng/searxng:latest

COPY core-config/ /etc/searxng/

ENV SEARXNG_BIND_ADDRESS=0.0.0.0
ENV SEARXNG_PORT=8080
ENV FORCE_OWNERSHIP=false
