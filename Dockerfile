FROM ruby:3.3-alpine3.20

WORKDIR /oss-emulator
COPY bin bin
COPY lib lib
RUN gem install thor builder webrick
CMD ["ruby","/work/bin/emulator", "-r", "store", "-p", "8080"]
