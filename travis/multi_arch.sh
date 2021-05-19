docker login quay.io -u=$QUAY_USERNAME -p=$QUAY_PASSWORD
export DOCKER_CLI_EXPERIMENTAL=enabled
docker manifest create  quay.io/sachin_itagi/che-machine-exec:nightly --amend quay.io/sachin_itagi/che-machine-exec:manifest-amd64 --amend quay.io/sachin_itagi/che-machine-exec:manifest-ppc64le
docker manifest push quay.io/sachin_itagi/che-machine-exec:nightly
docker manifest create  quay.io/sachin_itagi/che-machine-exec:$(git rev-parse --short HEAD) --amend quay.io/sachin_itagi/che-machine-exec:manifest-amd64 --amend quay.io/sachin_itagi/che-machine-exec:manifest-ppc64le
docker manifest push quay.io/sachin_itagi/che-machine-exec:$(git rev-parse --short HEAD)