echo "Quay Login"
docker login quay.io -u=$QUAY_USERNAME -p=$QUAY_PASSWORD
export DOCKER_CLI_EXPERIMENTAL=enabled
docker manifest create quay.io/sachin_itagi/che-machine-exec:pr-check --amend quay.io/sachin_itagi/che-machine-exec:manifest-amd64 --amend quay.io/sachin_itagi/che-machine-exec:manifest-ppc64le
