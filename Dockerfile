FROM debian:jessie
ENTRYPOINT []
RUN apt-get update -qy && apt-get install -qy python3
RUN apt-get update && apt-get install -y \
    python3-pip \ 
    curl \
    git
RUN git clone git://github.com/dropbox/dropbox-sdk-python.git \
    cd dropbox-sdk-python \
    python setup.py install


COPY . .

VOLUME /var/image/

CMD ["python", "take.py", "60"]
