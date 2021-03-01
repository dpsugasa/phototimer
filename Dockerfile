FROM debian:latest
ENTRYPOINT []
RUN apt-get update -qy && apt-get install -qy python3.6
COPY . .

VOLUME /var/image/

CMD ["python", "take.py", "60"]
