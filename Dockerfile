FROM raj2sudha/node-raspbian:node-base  
ENTRYPOINT []

RUN mkdir -p /home/pi/learnings/hellotest

ADD ./index.js /home/pi/learnings/hellotest/index.js
ADD ./package.json /home/pi/learnings/hellotest/package.json

WORKDIR /home/pi/learnings/hellotest

CMD npm start




