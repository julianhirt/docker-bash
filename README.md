# docker-bash

## Purpose

`docker-bash` is supposed to make it easy to start a bash within a docker container.
Instead of finding out the id of the container using `docker ps` and typing `docker exec -i -t CONTAINER_ID /bin/bash` you can use docker-bash to give an overview of the running docker container and choose the container directly you want to start the bash in.

## Usage

```
docker-bash
```

or if you already know which container you want to start the bash in just give it the id (or part of the id) as parameter

```
docker-bash 1234
```

You can also use the name of the container. Pass -n or --name and use any part of the containers name to identify it. If only one container matches, it will directly start the bash. Otherwise it will show the matching containers to choose from.

```
docker-bash -n my_container_name
```

## Installation

```
$ git clone https://github.com/julianhirt/docker-bash
$ cd docker-bash
$ sudo make install
```
