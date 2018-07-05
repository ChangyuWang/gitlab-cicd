FROM  alpine:3.7 as base
RUN apk add --no-cache ca-certificates uwsgi-python3
  
COPY ./flake8-3.5.0-py2.py3-none-any.whl /tmp/
COPY ./mccabe-0.6.1-py2.py3-none-any.whl /tmp/
COPY ./pycodestyle-2.3.1-py2.py3-none-any.whl /tmp/
COPY ./pyflakes-1.6.0-py2.py3-none-any.whl /tmp/
COPY ./yapf-0.22.0-py2.py3-none-any.whl ./tmp/
RUN pip3 install /tmp/*
