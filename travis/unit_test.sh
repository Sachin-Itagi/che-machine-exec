echo "Build che-exec binary"
CGO_ENABLED=0 GOOS=linux go build -mod=vendor -a -ldflags '-w -s' -a -installsuffix cgo -o che-machine-exec .
echo "Run Unit Test"
go test ./... -test.v
