mkdir ./iso-output
sudo podman run --rm --privileged --volume ./iso-output:/build-container-installer/build --security-opt label=disable --pull=newer \
ghcr.io/jasonn3/build-container-installer:latest \
IMAGE_REPO=ghcr.io/tkk13909 \
IMAGE_NAME=TKKOS \
IMAGE_TAG=latest \
VARIANT=Kinoite # should match the variant your image is based on

# Test message that should not trigger a rebuild
