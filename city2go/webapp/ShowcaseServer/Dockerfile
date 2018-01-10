FROM ubuntu:xenial

MAINTAINER  Fernando Mendez Requena <fernando.mendez.external@atos.net>

RUN apt-get update && \
    apt-get -qq install -y \
    sudo libpq-dev postgresql postgresql-contrib -y -qq \
    sudo postgresql-client-common \
    dialog apt-utils \
    nodejs npm nodejs-legacy -y -qq \
    python-pip \
    python-dev \
    python-virtualenv \
    apache2
	
RUN pip install --upgrade pip

#Show python errors
ENV PYTHONUNBUFFERED=1
ENV WEBAPP_DIR=/webapp/ShowcaseServer/

RUN mkdir /webapp && mkdir $WEBAPP_DIR

WORKDIR $WEBAPP_DIR

ADD basic-dep.sh $WEBAPP_DIR
RUN cd $WEBAPP_DIR && \
    chmod 700 basic-dep.sh && \
    ./basic-dep.sh

ADD requirements.txt $WEBAPP_DIR
RUN pip install -r requirements.txt
ADD manage.py $WEBAPP_DIR
#ADD ShowcaseServer $WEBAPP_DIR/ShowcaseServer
ADD showcase_server $WEBAPP_DIR/showcase_server
ADD backend $WEBAPP_DIR/backend
ADD dashboard $WEBAPP_DIR/dashboard

ADD dev-setup.sh $WEBAPP_DIR
RUN cd $WEBAPP_DIR && \
    chmod 700 dev-setup.sh && \
    ./dev-setup.sh