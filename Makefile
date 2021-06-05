REGISTRY   := c8n.io
REPOSITORY := myspotontheweb/gitops-demo-app1
TAG        := v0.0.1

build:
	docker buildx build -t $(REGISTRY)/$(REPOSITORY):$(TAG) -t $(REGISTRY)/$(REPOSITORY):latest --load .

push:
	docker buildx build -t $(REGISTRY)/$(REPOSITORY):$(TAG) -t $(REGISTRY)/$(REPOSITORY):latest --push .

login:
	docker login $(REGISTRY)
