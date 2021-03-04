FROM debian:buster
ENTRYPOINT []
RUN apt-get update && apt-get -y install --no-install-recommends \
    pkg-config \
	python3 \
	python3-dev \
	python3-pip \
	python3-setuptools \
    python3-dropbox \
    git
    
# RUN apt-get update && apt-get install -y \
#     python3-pip \ 
#     python3-dropbox\
#     curl \
#     git
#RUN pip3 install dropbox

COPY . .

VOLUME /var/image/

CMD ["python3", "take.py", "60"]
