# bart-builder
A Docker container build environment for [BART](https://github.com/exosports/BART)

## How do I use this?
Follow the instructions [here](https://github.com/exosports/BART#install-and-compile) up until you clone the repository. After you clone the repository, run the following command to get a shell in an ephemeral docker container that contains all build dependencies.
```
docker run -it -v $topdir:$topdir -e topdir=$topdir \
-u $(id -u ${USER}):$(id -g ${USER}) --rm davecwright3/bart-builder:latest 
```
Now, just follow the rest of the instructions at the aforementioned link while inside the docker container. When you are done, just `exit`. The docker image should be removed from your system.
