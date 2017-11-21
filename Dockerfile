FROM raj2sudha/node-raspbian:node-base  
ENTRYPOINT []


# RUN apt-get update && apt-get -qy install npm
# RUN which npm
RUN mkdir -p /home/pi/learnings/hellotest

ADD ./index.js /home/pi/learnings/hellotest/index.js
ADD ./package.json /home/pi/learnings/hellotest/package.json

WORKDIR /home/pi/learnings/hellotest
#ENTRYPOINT ["/home/pi/learnings/hellotest"]
#RUN CD /home/pi/learnings/hellotest
CMD npm start




