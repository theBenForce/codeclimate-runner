FROM codeclimate/codeclimate

RUN apk update && \
  apk upgrade && \
  apk add --no-cache \
  bash

RUN echo "export PATH=\"\$PATH:/usr/src/app/bin\"" > /root/.bashrc

RUN /bin/bash
ENTRYPOINT [ "/bin/bash" ]