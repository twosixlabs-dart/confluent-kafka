IMAGE_PREFIX = docker.causeex.com/dart
IMAGE_NAME = confluent-kafka
IMG := $(IMAGE_PREFIX)/$(IMAGE_NAME)
CONFLUENT_KAFKA_VERSION := 5.3.1

docker-build:
	docker build --pull -t $(IMG):$(CONFLUENT_KAFKA_VERSION) .

docker-push: docker-build
	docker push $(IMG):$(CONFLUENT_KAFKA_VERSION)
