FROM nginx:1.11.13-alpine

WORKDIR /nginx
COPY ./run.sh ./test.sh ./
ONBUILD COPY ./conf.d /etc/nginx/conf.d

CMD sh run.sh
