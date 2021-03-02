FROM debian:buster
ENTRYPOINT []
RUN apt-get update -qy && apt-get install -qy python3 \
    python3-pip \
    python-dropbox \
    git
# RUN apt-get update && apt-get install -y \
#     python3-pip \ 
#     python3-dropbox\
#     curl \
#     git
#RUN pip3 install dropbox

COPY . .

VOLUME /var/image/

CMD ["python", "take.py", "60"]
