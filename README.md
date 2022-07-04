# simple-trading
Codebase to show how to do ML for trading, data analysis, algo trading etc from ground up


## To setup

- Install Docker
- If you have GPU and want to access the same from the container then follow [this](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html) steps
- Build the container. Like so - `docker build -t my-dl-img .`
- Run the container. Like so - `./bin/run_container.sh` (This script assumes you have GPU, if not use this command `docker run -v $PWD:/tmp -w /tmp -p 127.0.0.1:8888:8888 --rm my-dl-img`)
- There are a few utility scripts to be run from the host machine. Like the following. They will help to clean up sometimes.
    - ./bin/clean_containers.sh
    - ./bin/scan_8888.sh

*Warning: The total image size is pretty big, about 7GB because of the base image (pytorch)*

## What is included - 

 - Pytorch (Modelling)
 - XGBoost (Modelling)
 - Numpy (Numerical computations)
 - scipy (Scientific computations)
 - plotly (Plotting lib)
 - pandas (DataFrame)
 - nsepy (Specific package for fetching NSE related data)
 - pandas-datareader (Remote data access for pandas) 