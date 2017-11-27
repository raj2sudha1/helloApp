FROM raj2sudha/node-raspbian:node-base  
ENTRYPOINT []

RUN mkdir -p /usr/local/learnings/hellotest

ADD ./index.js /usr/local/learnings/hellotest/index.js
ADD ./package.json /usr/local/learnings/hellotest/package.json

WORKDIR /usr/local/learnings/hellotest

CMD npm start
