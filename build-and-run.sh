#!/bin/bash

# Usage check
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <container-name> <path-to-repo>"
    exit 1
fi

CONTAINER_NAME="$1"
REPO_PATH="$2"

# Make sure path exists
if [ ! -d "$REPO_PATH" ]; then
    echo "Error: path '$REPO_PATH' does not exist."
    exit 1
fi

# Optional: stop and remove container if it exists
if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo "Removing existing container '${CONTAINER_NAME}'..."
    docker rm -f "$CONTAINER_NAME"
fi

# Build image
echo "Building image..."
docker build -f 18-bookworm.Dockerfile -t my-clang18-image .

# Run container
echo "Running container '${CONTAINER_NAME}'..."
docker run -dit -v "$REPO_PATH":/workspace --name "$CONTAINER_NAME" my-clang18-image

