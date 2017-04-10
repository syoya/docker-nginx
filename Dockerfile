FROM nginx:1.11.13-alpine

COPY ./conf.d /etc/nginx/conf.d
WORKDIR /nginx
COPY ./run.sh ./test.sh ./

CMD sh run.sh
