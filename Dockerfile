FROM nginx:1.11.13-alpine

WORKDIR /usr/local/bin
COPY ./run.sh run
COPY ./test.sh test
RUN chmod a+x run test
ONBUILD COPY ./conf.d /etc/nginx/conf.d

CMD run
