FROM debian:latest
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
LABEL \
      author="thewhiteh4t" \
      maintainer="Vincent Nadal <vincent.nadal@orange.fr>"
RUN apt-get update && \
    apt-get -y install python3 python3-pip nodejs
RUN pip3 install requests
RUN pip3 install cfscrape
COPY * ./
ENTRYPOINT ["python3", "pwnedornot.py"]
