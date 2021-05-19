docker version
echo "Quay Login"
docker login quay.io -u=$QUAY_USERNAME -p=$QUAY_PASSWORD
echo "::set-output name=sha_short::$(git rev-parse --short HEAD)"
echo "Build and push both short SHA tag and nightly tag"
docker build -t quay.io/sachin_itagi/che-machine-exec:manifest-$TRAVIS_CPU_ARCH --build-arg ARCH=$TRAVIS_CPU_ARCH/ --file build/dockerfiles/Dockerfile .
docker push quay.io/sachin_itagi/che-machine-exec:manifest-$TRAVIS_CPU_ARCH
