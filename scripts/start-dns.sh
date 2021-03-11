
echo "Set variable CDTHOME: ${CDTHOME}"
echo "Stop systemd-resolved and release dns port 53"
service systemd-resolved stop

echo "Boot coredns server."
docker run -it -d --net=host \
--name=coredns --restart=always \
-v ${CDTHOME}/dns/coredns:/etc/coredns/ \
coredns/coredns:1.8.0 \
-conf /etc/coredns/Corefile

echo "Finish."