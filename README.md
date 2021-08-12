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

# build with singularity

## python-env

this example builds a singularity image of `python-env`.

```
cd python-env
sudo singularity build python-env.sif Singularity
```

example of running the image. arguments after the image name are passed to the
entrypoint. because our entrypoint is `python`, the command-line arguments are passed
to that.

```
$ singularity run python-env.sif -c 'import numpy; print(numpy.__version__)'
1.21.1
```

and here's an example to show that users stay themselves in containers...

remember, just be yourself.

```
$ singularity exec python-env.sif whoami
jakub
```

this is not the case in docker. you need `sudo` to run the containers, so inside the
container, you can be root. this is not ideal, especially on shared clusters.
