FROM ruby:3.3-alpine3.20

WORKDIR /oss-emulator
COPY bin bin
COPY lib lib

RUN mkdir store log
RUN gem install thor builder webrick

EXPOSE 8880
ENV DOCKER_LOGS="true"

CMD ["ruby","/oss-emulator/bin/emulator", "-r", "store", "-p", "8880"]
