default: build push

build:
	docker build -t mikula/teeworlds-server .

push:
	docker push mikula/teeworlds-server
