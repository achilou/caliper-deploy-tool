echo "Set variable CDTHOME: ${CDTHOME}"

echo "stop & rm coredns server."
docker stop coredns && docker rm coredns

service systemd-resolved start


echo "Finish."