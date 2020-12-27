# Description

This repository contains an example of making a Docker image for a jupyter notebook server that 
has two kernels - a pytorch and a tensorflow. This comes in handy because [tensorflow 2 breaks 
tensorboard for pytorch](https://github.com/pytorch/pytorch/issues/30966) and so having both in 
the same environment is not possible.

# Usage

To use source the file `source_environment_variables`

```bash
source source_environment_variables.sh
```

If you have a notebooks folder that you'd want to access point it to the variable 
`NOTEBOOKS_FOLDER`. Then run the docker-compose file.