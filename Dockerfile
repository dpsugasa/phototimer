FROM debian:jessie
ENTRYPOINT []
RUN apt-get update -qy && apt-get install -qy python3
COPY . .

VOLUME /var/image/

CMD ["python", "take.py", "60"]
