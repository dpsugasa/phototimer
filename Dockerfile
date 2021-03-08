FROM dpsugasa/photo_camera:latest

ENTRYPOINT []

RUN apt-get update -qy && apt-get install -qy python3 \
	pkg-config \
	python3-setuptools \
	python3-dropbox \
	git

COPY . .

VOLUME /var/image/

CMD ["python3", "take.py", "60"]
