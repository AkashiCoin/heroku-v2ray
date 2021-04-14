FROM alpine:3.5

ADD configure.sh /configure.sh

RUN apk add --no-cache ca-certificates curl unzip wget \
 && chmod +x /configure.sh

CMD /configure.sh
