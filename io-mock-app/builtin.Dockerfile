FROM jinaai/jina:devel

ADD requirements.txt .

RUN apt-get update

COPY . /

RUN python app.py index "mp4/*.mp4" && rm -rf mp4

ENTRYPOINT ["python", "app.py"]
