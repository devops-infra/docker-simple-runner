FROM alpine:3.17.0

# Install prerequisits
SHELL ["/bin/sh", "-euxo", "pipefail", "-c"]
RUN apk update --no-cache ;\
  apk add --no-cache \
    bash~=5.2.12 \
    docker=~=20.10.21 \
    make~=4.3 \
    ncurses~=6.3 \
    python3~=3.10.8 \
    py3-pip~=22.3.1

# List of Python packages
COPY pip/requirements.txt /tmp/requirements.txt

# Python packages
SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

COPY show-versions.sh /usr/bin/
SHELL ["/bin/bash", "-euxo", "pipefail", "-c"]
RUN chmod +x \
    /usr/bin/show-versions.sh ;\
  # Cleanup
  rm -rf /var/cache/* ;\
  rm -rf /root/.cache/* ;\
  rm -rf /tmp/*

# Labels for http://label-schema.org/rc1/#build-time-labels
# And for https://github.com/opencontainers/image-spec/blob/master/annotations.md
# And for https://help.github.com/en/actions/building-actions/metadata-syntax-for-github-actions
ARG NAME="Simplified CI/CD runner"
ARG DESCRIPTION="Simplified environment with Make and Docker to be used as CI/CD runner for more complicated images."
ARG REPO_URL="https://github.com/devops-infra/docker-simple-runner"
ARG AUTHOR="Krzysztof Szyper <biotyk@mail.com>"
ARG HOMEPAGE="https://christophshyper.github.io/"
ARG BUILD_DATE=2020-04-01T00:00:00Z
ARG VCS_REF=abcdef1
ARG VERSION=0.0.0
LABEL \
  org.label-schema.build-date="${BUILD_DATE}" \
  org.label-schema.name="${NAME}" \
  org.label-schema.description="${DESCRIPTION}" \
  org.label-schema.usage="README.md" \
  org.label-schema.url="${HOMEPAGE}" \
  org.label-schema.vcs-url="${REPO_URL}" \
  org.label-schema.vcs-ref="${VCS_REF}" \
  org.label-schema.vendor="${AUTHOR}" \
  org.label-schema.version="${VERSION}" \
  org.label-schema.schema-version="1.0"	\
  org.opencontainers.image.created="${BUILD_DATE}" \
  org.opencontainers.image.authors="${AUTHOR}" \
  org.opencontainers.image.url="${HOMEPAGE}" \
  org.opencontainers.image.documentation="${REPO_URL}/blob/master/README.md" \
  org.opencontainers.image.source="${REPO_URL}" \
  org.opencontainers.image.version="${VERSION}" \
  org.opencontainers.image.revision="${VCS_REF}" \
  org.opencontainers.image.vendor="${AUTHOR}" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.title="${NAME}" \
  org.opencontainers.image.description="${DESCRIPTION}" \
  maintainer="${AUTHOR}" \
  repository="${REPO_URL}"

WORKDIR /data
CMD ["show-versions.sh"]
