# Use the official Python image based on a Linux environment:
FROM python:3.12-slim

# Install VIM inside the Docker container:
RUN apt-get update && apt-get install -y vim

# Set the working directory inside the container:
WORKDIR /app

# Start a Bash shell by default to keep the container interactive:
CMD ["bash"]



