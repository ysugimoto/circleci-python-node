FROM circleci/python:3.6.1

ENV NODE_VERSION 8.9.1

RUN curl -L -o /tmp/node-${NODE_VERSION}.tar.gz https://nodejs.org/download/release/v8.9.1/node-v8.9.1-linux-x64.tar.gz && \
  cd /tmp && \
  tar xfz node-${NODE_VERSION}.tar.gz && \
  sudo mv node-v${NODE_VERSION}-linux-x64 /usr/local/node && \
  echo "export PATH=$PATH:/usr/local/node/bin" >> /home/circleci/.bashrc && \
  rm -rf node-${NODE_VERSION}.tar.gz
