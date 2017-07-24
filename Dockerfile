FROM node

ARG TW_NAME
ARG TW_USER
ARG TW_PASSWORD
ENV TW_NAME=${TW_NAME}
ENV TW_USER=${TW_USER}
ENV TW_PASSWORD=${TW_PASSWORD}
ENV TW_BASE=/usr/src/app
ENV TW_LAZY=""
ENV TW_PATH ${TW_BASE}/${TW_NAME}

WORKDIR ${TW_BASE}
VOLUME ${TW_PATH}

ADD ./docker_files/run-tiddlywiki.sh /usr/local/bin
EXPOSE 8080

ENV TW_VERSION 5.1.11
RUN npm install --silent -g tiddlywiki@${TW_VERSION}

CMD ["/usr/local/bin/run-tiddlywiki.sh"]
