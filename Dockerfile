FROM docker.io/searxng/searxng:latest

COPY core-config/ /etc/searxng/

COPY core-config/custom-infopage/en/about.md /usr/local/searxng/searx/infopage/en/about.md
COPY core-config/custom-infopage/en/donate.md /usr/local/searxng/searx/infopage/en/donate.md
COPY core-config/custom-infopage/en/search-syntax.md /usr/local/searxng/searx/infopage/en/search-syntax.md

ENV SEARXNG_BIND_ADDRESS=0.0.0.0
ENV SEARXNG_PORT=8080
ENV FORCE_OWNERSHIP=false
