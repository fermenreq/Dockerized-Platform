# Dockerized City2Go Platform

The purpose of this folder is to provide the Docker descriptors for the task of amplifying STAMP configurations, not with the intention of instantiating City2Go

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.
setting 

## Prerequisites

```
Docker
Docker compose
Linux SO (Ubuntu 14.04 - 16.10)
Malaga-showcase app
```
## Installation Steps:

1. Clone the following repo:
```
git clone https://fermenreq@gitlab.ow2.org/stamp/atos-uc-city2go.git
```

2. Move to the folder:
```
cd atos-uc-city2go/city2go
```

3. Build the image:
```
root@osboxes:/home# docker-compose up 
Starting my_db
Starting my_web
Attaching to my_db, my_web
my_db  | LOG:  database system was shut down at 2018-01-08 14:28:06 UTC
my_db  | LOG:  MultiXact member wraparound protections are now enabled
my_db  | LOG:  database system is ready to accept connections
my_db  | LOG:  autovacuum launcher started
my_web | Performing system checks...
my_web | 
my_web | System check identified no issues (0 silenced).
my_web | January 08, 2018 - 14:28:13
my_web | Django version 1.10.2, using settings 'showcase_server.settings'
my_web | Starting development server at http://0.0.0.0:8000/
my_web | Quit the server with CONTROL-C.
```

## Versioning

For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors
* **Fernando Méndez Requena** - <fernando.mendez.external@atos.net>
