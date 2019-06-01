FROM python:3.7-alpine

MAINTAINER azure<https://baiyue.one>
#跨设备、跨平台，快速使用scrapy，省略掉原始编译过程，开箱即用
ARG BUILD=libffi-dev\ gcc\ libxml2-dev\ openssl-dev\ libxslt-dev\ build-base
ENV WORK_DIR=/root/scrapy

WORKDIR ${WORK_DIR}

RUN apk add --update --no-cache \ 
    && apk add ${BUILD} \
    && pip install scrapy \
    && rm -rf /var/cache/apk/*
CMD [ "sh" ]
