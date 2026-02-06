# yacdm
Yet Another Custom Dependency Manager

## Development

### Requirements

* [Docker](https://docs.docker.com/desktop/)

### Setup Environment

```
$ git clone https://github.com/hassaanirshad/yacdm.git
$ pushd yacdm
$ docker build -f ./docker/development.Dockerfile -t yacdm:dev .
$ popd
```

### Start developing

The commands for first time setup:
```
$ docker run -d --name yacdm_dev_container yacdm:dev
```

The commands for starting an existing development container:
```
$ docker start yacdm_dev_container
```

Connect to the `yacdm_dev_container` container using VSCode.

### Build

```
$ go mod download
$ go build -o yacdm ./cmd/yacdm
```

### Run

```
$ ./yacdm --help
```

### Reset envionment

**NOTE:** The following commands ignore the errors when the specified container or the image does not exist.

```
$ docker stop -t 10 yacdm_dev_container; \
    docker rm yacdm_dev_container; \
    docker image rm yacdm:dev
```

