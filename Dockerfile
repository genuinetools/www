FROM alpine
MAINTAINER Jessie Frazelle <jess@linux.com>

RUN apk --no-cache add \
	ca-certificates \
	curl \
	tar

ENV HUGO_VERSION 0.16
RUN curl -sSL https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-64bit.tgz | tar -v -C /usr/local/bin -xz --strip-components 1
