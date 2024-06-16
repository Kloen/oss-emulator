FROM ruby:3.3-alpine3.20

WORKDIR /oss-emulator
ADD . .
RUN gem install thor builder webrick
CMD ["ruby","/work/bin/emulator", "-r", "store", "-p", "8080"]
