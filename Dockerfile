FROM ubuntu:latest
MAINTAINER ToanB2111960 "toanb2111960@example.com"

RUN apt update -y && apt install -y \
    python3 \
    python3-flask \
    python3-dev \
    build-essential

ADD . /flask_app
WORKDIR /flask_app

ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]

