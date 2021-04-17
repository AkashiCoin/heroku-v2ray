FROM alpine:3.5

ADD configure.sh /configure.sh

RUN apk add --no-cache ca-certificates unzip wget \
 && chmod +x /configure.sh

CMD /configure.sh
