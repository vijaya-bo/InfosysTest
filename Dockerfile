FROM ubuntu:16.04

RUN sudo apt-get update && sudo apt-get install -y python python-pip

RUN pip install flask 

COPY index.py /opt/

ENTRYPOINT FLASK_APP=/opt/index.py flask run --host=0.0.0.0 --port=8080










