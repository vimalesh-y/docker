# Experimenting with Docker

I create a Docker image from a Linux environment with Python. I build the image and run a Docker container, before I use VIM to create a file within the image and save it. Finally, the container is stopped.
&nbsp;
## Requirements

- Tested on Python version 3.12.6, which also pulled in pip (version 24.2)
- Docker Desktop (version 4.34.2)

## Key commands
#### Writing the Dockerfile
- Use the official Python image based on a Linux environment (Debian Linux):
  ```FROM python:3.12-slim```

- Install VIM inside the Docker container:
  ```RUN apt-get update && apt-get install -y vim```

- Set the working directory inside the container:
  ```WORKDIR /app```

- Start a Bash shell by default to keep the container interactive:
  ```CMD ["bash"]```
&nbsp;

#### Building the Docker image using terminal
- In the integrated terminal, run this command to build the Docker image: ```docker build -t my-python-vim-image .```
&nbsp;

#### Running the Docker container
- After the image is built, run the container and access it using:
  ```docker run -it --name my-python-vim-container my-python-vim-image```
&nbsp;

#### Create and edit your file within the container using VIM
- Use VIM editor to create your file:
```vim my_file.txt```
&nbsp;

#### Stopping the Docker container
- Type ```exit``` to stop the container running.
