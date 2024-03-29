FROM alpine:3.10
LABEL maintainer "Amila Kothalawala <amila@openemail.io>"

WORKDIR /app

RUN apk add --update --no-cache python3 openssl tzdata \
 && pip3 install --upgrade pip \
 && pip3 install --upgrade docker flask flask-restful

COPY dockerapi.py /app/

CMD ["python3", "-u", "/app/dockerapi.py"]
