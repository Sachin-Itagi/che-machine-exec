echo "" > coverage.txt
go test -v ./... -coverprofile coverage.txt
bash <(curl -s https://codecov.io/bash)
echo "codecov works properly!!!"