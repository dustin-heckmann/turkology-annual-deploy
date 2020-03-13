# turkology-annual-deploy
Deployment script for Turkology Annual Online

[About Turkology Annual Online](http://www.asia-europe.uni-heidelberg.de/en/research/heidelberg-research-architecture/projects/turkology-annual.html)

## Requirements
* [docker](https://docs.docker.com)
* [docker-compose](https://docs.docker.com/compose/)
* [Docker Hub account](https://docs.docker.com/docker-hub/) in order to pull the required images

## Deployment
To deploy TA Online on Linux or MacOS, just run 
```
./deploy.sh
```

## Services
This script deploys the following services:
* ta-parser
  * Github: https://github.com/dustin-heckmann/turkology-annual-parser 
  * Docker image: https://hub.docker.com/repository/docker/dustinheckmann/turkology-annual-parser
* ta-frontend
  * Github: https://github.com/dustin-heckmann/turkology-annual-frontend
  * Docker image: https://hub.docker.com/repository/docker/dustinheckmann/turkology-annual-frontend
* ta-backend
  * Github: https://github.com/dustin-heckmann/turkology-annual-backend
  * Docker image: https://hub.docker.com/repository/docker/dustinheckmann/turkology-annual-backend
* ta-statistics-backend
  * Github: https://github.com/dustin-heckmann/turkology-annual-statistics-backend
  * Docker image: https://hub.docker.com/repository/docker/dustinheckmann/turkology-annual-statistics-backend
* ta-index
  * using Elasticsearch
