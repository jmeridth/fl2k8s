FROM ubuntu:latest
MAINTAINER Jason Meridth "jmeridth@gmail.com"
RUN apt-get update -y && \
  apt-get install -y curl lsof vim python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -U pip && pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
