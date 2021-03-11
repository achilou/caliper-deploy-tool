echo "Set variable CDTHOME: ${CDTHOME}"

echo "umount nfs"
ansible-playbook ${CDTHOME}/ansible/umount-nfs.yaml

echo "stop & rm nfs server."
docker stop nfs && docker rm nfs

echo "rm -rf /root/ansible  on each host"
echo "stop&rm fabric's docker container on each host"
# 7. (non-implements) restore docker config on each host
rm -rf /root/ansible
ansible-playbook ${CDTHOME}/ansible/clean-file.yaml


echo "Finish."