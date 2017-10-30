FROM alpine:3.6

ADD password.txt /
ADD run.sh /
RUN apk update \
	&& apk add py2-pip netcat-openbsd gcc libc-dev python2-dev bash \
	&& pip install vnc2flv \
	&& chmod +x run.sh \
	&& rm -rf /var/cache/apk/*

ENTRYPOINT ["/run.sh"]
