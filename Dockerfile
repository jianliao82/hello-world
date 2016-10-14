FROM ubuntu:14.04
MAINTAINER hchan@alauda.io

RUN apt-get update && \
    apt-get install -y python-pip

RUN pip install flake8

WORKDIR /app

COPY . /app

EXPOSE 9000

RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]
