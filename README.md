# Description

This repository contains an example of making a Docker image for a jupyter notebook server that 
has two kernels - a pytorch and a tensorflow. This comes in handy because [tensorflow 2 breaks 
tensorboard for pytorch](https://github.com/pytorch/pytorch/issues/30966) and so having both in 
the same environment is not possible.

# Usage

To run check the vairables in the file `source_environment_variables.sh` and then run 
```bash
source source_environment_variables.sh
docker-compose -f traefik/docker-compose.yml up -d
docker-compose up -d
```
