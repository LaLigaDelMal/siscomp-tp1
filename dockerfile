FROM clinstid/i386-python:latest
#here the dockerfile is pulling the python 3.10 from docker hub which already has python installed so we have all the things we need to have python in our container.

WORKDIR /SISCOMP

ADD src/asmlibrary.so ./
ADD src/getCrypto.py ./
#Here we added the python file that we want to run in docker and define its location.
RUN apt-get update
RUN apt-get install python3-pip -y
RUN pip3 install requests
#Here we installed the dependencies, we are using the pygame library in our main.py file so we have to use the pip command for installing the library

CMD [ "python3", "getCrypto.py" ]