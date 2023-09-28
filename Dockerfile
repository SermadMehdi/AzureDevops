# Use an official Python runtime as a parent image
FROM python:3.8

# Update and install pip
RUN apt-get update && apt-get install -y python3-pip

# Clean up the package cache
RUN apt-get clean

# Your additional Dockerfile commands can go here

# CMD ["python", "your_script.py"]
