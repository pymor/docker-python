PYTHONS = 3.6 3.7
VARIANT?=stretch-slim

.PHONY: pythons $(PYTHONS) push

pythons: $(PYTHONS)


$(PYTHONS):
	cd "$@/$(VARIANT)" && \
	docker build --pull -t "pymor/python:$@" .
push:
	docker push pymor/python
all: pythons
