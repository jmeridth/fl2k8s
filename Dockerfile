FROM python:3.6-alpine
MAINTAINER Jason Meridth "jmeridth@gmail.com"
RUN apk add --update py-pip build-base bash vim libffi-dev python-dev git
COPY . /app
WORKDIR /app
RUN pip install -U pip && pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]

