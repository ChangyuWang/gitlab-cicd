FROM  ubuntu:14.04
RUN apt-get update
#RUN apt-get install -y apt-transport-https software-properties-common
#RUN add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable" && apt-get update
#RUN apt-get install -y --force-yes  docker-ce python-pip
RUN apt-get install -y --force-yes  python-pip
ADD pip.conf /root/.pip/
ADD ./* /app/
RUN pip install flask
CMD ["/bin/bash", "-c", "python /app/hello.py"]
#RUN pip install flake8 yapf

