FROM alpine:3.12.2

RUN apk update

RUN apk add socat

EXPOSE 28064

CMD while true; do socat -d -d TCP-LISTEN:28064,reuseaddr,fork EXEC:"echo 'flag{scan_and_connect}'",stderr; done;
