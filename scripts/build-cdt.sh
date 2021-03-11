echo "Set variable CDTHOME: ${CDTHOME}"

docker pull node:10-alpine
docker pull coredns/coredns:1.8.0
docker pull itsthenetwork/nfs-server-alpine:12


echo "build cdt docker image."
docker build -t cdt ${CDTHOME}/docker

echo "Finish."
