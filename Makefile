PYTHONS = 3.6 3.7 3.8
VARIANT?=buster/slim

.PHONY: pythons $(PYTHONS) push

pythons: $(PYTHONS)


$(PYTHONS):
	cd "$@/$(VARIANT)" && \
	docker build -t "pymor/python:$@" .
push:
	docker push pymor/python
all: pythons
