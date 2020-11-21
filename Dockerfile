FROM alpine:3.5

ADD configure.sh /configure.sh

RUN chmod +x /configure.sh \
 && apk add --no-cache --virtual .build-deps ca-certificates curl unzip \
 && apk del .build-deps

CMD /configure.sh
