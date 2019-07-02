FROM codeclimate/codeclimate

RUN apk update && \
  apk upgrade && \
  apk add --no-cache \
  bash

ENV PATH="/usr/src/app/bin:${PATH}"
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]