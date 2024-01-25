# Use the official Python image as the base image
FROM python:3.10

ENV PYTHONUNBUFFERED 1

# Install Node.js
RUN apt-get update -y
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs

# Set the working directory
WORKDIR /app

# Copy the rest of the application code
COPY . .
