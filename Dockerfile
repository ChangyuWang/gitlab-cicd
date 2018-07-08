FROM  ubuntu:14.04
RUN apt-get update
RUN apt-get install -y apt-transport-https software-properties-common
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" && apt-get update
RUN apt-get install -y --force-yes  docker-ce python-pip
COPY ./daemon.json /etc/docker/
ADD ./.dep/* /dep/
RUN pip install /dep/flake8-3.5.0-py2.py3-none-any.whl  /dep/yapf-0.22.0-py2.py3-none-any.whl

