FROM debian:latest
ENTRYPOINT []
RUN sudo apt-get update -qy && sudo apt-get install -qy python
COPY . .

VOLUME /var/image/

CMD ["python", "take.py", "60"]
