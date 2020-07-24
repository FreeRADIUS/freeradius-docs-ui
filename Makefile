#
#  Makefile to build ui-bundle.zip
#
#  Builds in a Docker container rather than requiring all the
#  dependencies to be installed on the host system.
#

SHELL=/bin/sh

#
#  Get ID of the current user so file ownership is correct in the
#  container.
#
DOCKER_UID=$(shell id -u):$(shell id -g)

#
#  Run the container, install npm dependencies and build the
#  bundle.
#
.PHONY: bundle.docker
bundle.docker: docker.image
	docker run -u $(DOCKER_UID) -v ${PWD}:/build --rm antora-ui-build /bin/sh -c "npm install ; gulp bundle"

#
#  Build Docker container.
#
.PHONY: docker.image
docker.image:
	docker build -t antora-ui-build .

