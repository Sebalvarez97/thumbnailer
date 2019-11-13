FROM alpine
RUN apk update && apk add npm && apk add nodejs && apk add git
RUN git clone https://github.com/Sebalvarez97/thumbnailer
WORKDIR /thumbnailer
CMD npm install && NODE_ENV=webhook node thumbnail-webhook.js