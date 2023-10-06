# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# Redirect stdout and stderr to a log file during pip install
RUN pip install numpy pandas requests > install.log 2>&1

# Copy the current directory contents into the container at /app
COPY . /app

# Define environment variable
ENV NAME World

# Run python when the container launches
CMD ["python", "app.py"]
