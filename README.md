# Experimenting with Docker

I create a Docker image from a Linux environment with Python. I build the image and run a Docker container, before I use VIM to create a file within the image and save it. Finally, the container is stopped.

## Requirements

- Tested on Python version 3.12.6, which also pulled in pip (version 24.2)
- Docker Desktop (version 4.34.2)

## Key commands
### Writing the Dockerfile
- Use the official Python image based on a Linux environment (Debian Linux):
  ```FROM python:3.12-slim```

- Install VIM inside the Docker container:
  ```RUN apt-get update && apt-get install -y vim```
