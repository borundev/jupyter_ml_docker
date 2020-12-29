# Description

This repository contains an example of making a Docker image for a jupyter notebook server that 
has two kernels - a pytorch and a tensorflow. This comes in handy because [tensorflow 2 breaks 
tensorboard for pytorch](https://github.com/pytorch/pytorch/issues/30966) and so having both in 
the same environment is not possible.

# Usage

To use make sure the environment variables in `source_environment_variables` are what you want 
them to be and run `./run.sh up`
