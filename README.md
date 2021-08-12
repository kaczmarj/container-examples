# container examples

# build with docker

## bedtools.Dockerfile

```
docker build --tag bedtools --file bedtools.Dockerfile .
```

## conda.Dockerfile

```
docker build --tag conda --file conda.Dockerfile .
```

### running jupyter notebook

please note that we set `--ip 0.0.0.0`. and we need to publish the port from the
container onto the host. otherwise, the port is only accessible inside the container
and will not be seen by our web browser (which is outside of the container).

```
docker run --rm -it --publish 8888:8888 conda --port 8888 --ip 0.0.0.0 --no-browser
```

## tensorflow24.Dockerfile

```
docker build --tag tensorflow:2.4 --file tensorflow24.Dockerfile .
```

## python-env

this is an example of building a docker image for a python environment. that directory
includes a `requirements.txt` file, which lists dependencies. we copy that file into
the docker image when it is being built, and we install the python packages listed
there.

```
docker build --tag mypyenv python-env
```
