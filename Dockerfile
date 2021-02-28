FROM alexellis2/raspistill:latest
ENTRYPOINT []
RUN apt-get update -qy && apt-get install python3.7
COPY . .

VOLUME /var/image/

CMD ["python3", "take.py", "60"]
