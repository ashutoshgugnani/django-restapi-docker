FROM python:3.6

ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
RUN mkdir /project

# Set the working directory to /music_service
WORKDIR /project

# Copy the current directory contents into the container at /music_service
ADD . /project/

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt