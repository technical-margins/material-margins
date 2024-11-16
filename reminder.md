# Docker commands

docker build -t material-margins -f docker/margins.Dockerfile .

docker run -ti --name material-margins -p 8082:80 material-margins

docker build -t material-margins-proxy:latest -f docker/nginx.Dockerfile .

docker run -ti --rm --name proxy-matmargins --link material-margins:materialmargins -p 8083:80 material-margins-proxy
