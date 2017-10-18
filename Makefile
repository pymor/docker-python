PYTHONS = 2.7 3.5 3.6 3.7-rc
VARIANT?=stretch

.PHONY: pythons $(PYTHONS)

pythons: $(PYTHONS)


$(PYTHONS):
	cd "$@/$(VARIANT)" && \
	docker build -t "pymor/python:$@" .

all: pythons
