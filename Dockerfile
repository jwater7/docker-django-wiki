FROM ubuntu
LABEL maintainer "j"

ENV DEBIAN_FRONTEND noninteractive

#    && apt-get install -y --force-yes --no-install-recommends \
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python \
        python-setuptools libjpeg8 libjpeg-dev libpng12-0 libpng12-dev \
        python-pip curl \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

RUN pip install wheel
RUN pip install Pillow
RUN pip install wiki==0.2.3

