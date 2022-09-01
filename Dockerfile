FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y pandoc && \
    apt-get install -y python3-pip

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY wiki_sync.py /wiki_sync.py

ENTRYPOINT ["python3"]
CMD ["/wiki_sync.py"]
