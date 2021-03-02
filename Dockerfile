FROM debian:jessie
ENTRYPOINT []
RUN apt-get update -qy && apt-get install -qy python3
RUN apt-get update && apt-get install -y \
    python3-pip \ 
    curl \
    git
RUN python3 -m pip install dropbox

COPY . .

VOLUME /var/image/

CMD ["python", "take.py", "60"]
