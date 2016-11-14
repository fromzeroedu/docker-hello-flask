FROM python:3.4.5-slim

## make a local directory
RUN mkdir /opt/hello_app

# set "hello_app" as the working directory from which CMD, RUN, ADD references
WORKDIR /opt/hello_app

# copy the local requirements.txt to the /hello_app directory
ADD requirements.txt .

# pip install the local requirements.txt
RUN pip install -r requirements.txt

# now copy all the files in this directory to /hello_app directory
ADD . .

# Listen to port 5000 at runtime
EXPOSE 5000

# Environment variable that sets default app to be run by Flask
ENV FLASK_APP=hello.py

# Define our command to be run when launching the container
CMD ["flask", "run", "--host", "0.0.0.0"]
