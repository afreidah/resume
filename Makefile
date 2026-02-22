# -------------------------------------------------------------------------------
# Munchbox Resume Image - Multiarch Build and Publish
#
# Project: Munchbox / Author: Alex Freidah
#
# Defines local workflows for building, running, and publishing the resume image.
# Uses Docker Buildx to produce amd64 and arm64 images suitable for deployment
# across heterogeneous nodes in the Munchbox environment.
# -------------------------------------------------------------------------------

# --- Image configuration ---
REGISTRY    ?= registry.munchbox.cc
IMAGE_NAME  ?= alex-resume
TAG         ?= latest

IMAGE       := $(REGISTRY)/$(IMAGE_NAME):$(TAG)

.PHONY: help build run push builder

# --- Task index for local workflows ---
help:
	@printf "Makefile targets:\n"
	@printf "  help      Print this help summary\n"
	@printf "  builder   Ensure a buildx builder exists and is active\n"
	@printf "  build     Build multiarch image (amd64 and arm64)\n"
	@printf "  run       Run image locally on port 8080\n"
	@printf "  push      Build and push multiarch image to registry\n"

# --- Ensure buildx builder exists ---
builder:
	@if ! docker buildx inspect mbuilder >/dev/null 2>&1; then \
	  docker buildx create --name mbuilder --use; \
	fi

# --- Build image for local platform (not pushed) ---
build: builder
	docker buildx build \
	  -t $(IMAGE) \
	  --load \
	  .

# --- Run container locally (amd64 host only) ---
run:
	docker run --rm --name $(IMAGE_NAME) -p 8080:80 $(IMAGE)

# --- Build and push multiarch image ---
push: builder
	docker buildx build \
	  --platform=linux/amd64,linux/arm64 \
	  -t $(IMAGE) \
	  --push \
	  .

