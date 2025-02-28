# Set base image (host OS)
FROM python:3.9.7


# Add flask app and dependencies to Dockerfile5
ADD app.py /
ADD requirements.txt /




ADD this_folder /

# Install any dependencies
RUN pip install -r /requirements.txt 



# By default, listen on port 5000



# Copy the dependencies file to the working directory
COPY . .

# Specify app environment
ENV FLASK_APP=app.py

# Specify the command to run on container start
CMD ["python","app.py"]

