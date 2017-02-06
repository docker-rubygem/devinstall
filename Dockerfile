FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.3

RUN gem install devinstall --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["pkg-tool"]
CMD ["--help"]
