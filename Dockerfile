FROM python:3.6-alpine
# https://github.com/kubernetes/kubernetes/releases
ARG K8S_VERSION=1.14.7
ADD https://storage.googleapis.com/kubernetes-release/release/v${K8S_VERSION}/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN export PATH=/usr/local/bin/:$PATH
RUN chmod +x /usr/local/bin/kubectl && \
    apk update && \
    apk add bash curl && \
    rm -rf /var/cache/apk/*
ENTRYPOINT ["/usr/local/bin/kubectl"]
