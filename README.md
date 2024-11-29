# group04

## Docker Container Setup

## Prerequisites
- Docker
- Docker Compose

## Use the Docker Image

### Pull the Docker Image from DockerHub
To pull the latest version of the Docker image from DockerHub, use:

```bash
docker pull agam007/group04:latest
```

### Run the Docker Container to start Jupyter Notebook
Next, start a container and map port 8888 for Jupyter Notebook access. The command is:

```bash
docker run \
    -it \
    --rm \
    -p 8888:8888 \
    -v .:/home/jovyan \
    agam007/group04:latest \
    start-notebook.sh \
    --NotebookApp.token='' \
    --NotebookApp.password=''
```

Go to http://localhost:8888/ to access the Jupyter Notebook.

### Update the Docker Image on DockerHub
If any changes are made to the environment files or Docker configuration files in this repository, the image on DockerHub will be automatically updated through the Github Actions Workflow.

## Use Docker Compose (Recommended)
Another simpler way to launch and manage containers is to use Docker Compose.

To start the services defined in the `docker-compose.yml` file, use:

```bash
docker-compose up
```

Similar to the above, go to http://localhost:8888/ to access the Jupyter Notebook.

To stop the services, press `Ctrl+C` in the terminal where `docker-compose up` is running, or use:

```bash
docker-compose down
```

## Project Title
**Toronto TTC Bus Delay Report**

## Description
This project aims to analyze the delay time (in minutes) for various bus routes in Toronto and build a model to predict future delays based on explanatory variables, including:
- Day of the week
- Month
- Type of incident (if any)
- Minimum delay time recorded

We build a predictive model using historical bus data in 2024 to determine the likelihood and extent of delays for future bus operations.

## Table of Contents
- [README.md](https://github.com/UBC-MDS/group04/blob/main/README.md)
- [CODE_OF_CONDUCT.md](https://github.com/UBC-MDS/group04/blob/main/CODE_OF_CONDUCT.md)
- [CONTRIBUTING.md](https://github.com/UBC-MDS/group04/blob/main/CONTRIBUTING.md)
- [data/](https://github.com/UBC-MDS/group04/tree/main/data)
- [Analysis Notebook](https://github.com/UBC-MDS/group04/blob/main/notebooks/analysis.ipynb)
- [environment.yml & Conda Lock Files](https://github.com/UBC-MDS/group04/blob/main/environment.yml)
- [LICENSE.md](https://github.com/UBC-MDS/group04/blob/main/LICENSE)
