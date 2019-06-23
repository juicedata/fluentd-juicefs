DOCKER_REPOSITORY=juicedata/fluentd-juicefs

docker-image:
	docker build docker -t $(DOCKER_REPOSITORY):latest

docker-push:
	docker push $(DOCKER_REPOSITORY):latest

dev:
	docker build docker -f docker/dev.Dockerfile -t $(DOCKER_REPOSITORY):dev
	docker push $(DOCKER_REPOSITORY):dev
	kubectl apply -k kubernetes/overlays/dev
