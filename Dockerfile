FROM ruby:3.3-alpine3.20

ENV DOCKER_LOGS="true"

WORKDIR /oss-emulator
COPY bin bin
COPY lib lib
COPY entrypoint.sh entrypoint.sh

RUN mkdir store
RUN gem install thor builder webrick
RUN chmod +x /oss-emulator/entrypoint.sh

EXPOSE 8880

ENTRYPOINT ["/oss-emulator/entrypoint.sh"]
