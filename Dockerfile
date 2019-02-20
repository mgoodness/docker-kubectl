FROM alpine:3.8

ENV KUBECTL_VERSION 1.13.3

RUN wget -O /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
  chmod +x /usr/local/bin/kubectl

ENTRYPOINT [ "kubectl" ]
