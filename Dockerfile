FROM python:2-alpine

LABEL maintainer "Pedro Pereira <pedrogoncalvesp.95@gmail.com>"

RUN apk add -U --no-cache iptables ip6tables
RUN pip install docker flask flask-restful

COPY server.py /

CMD ["python2", "-u", "/server.py"]
