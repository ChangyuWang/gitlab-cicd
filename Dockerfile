FROM  alpine:3.7 as base
RUN apk add --no-cache ca-certificates uwsgi-python3
ADD ./hello.py /app/
ADD ./flake /usr/bin/flake8
ADD ./flake8 /usr/lib/python3.6/site-packages/
