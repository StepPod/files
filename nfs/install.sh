# NFS 서버 설치 (예: Ubuntu)
sudo apt update

sudo apt install nfs-kernel-server -y

# 예: 각 노드에서 NFS 서버 IP 주소 확인 (서버 IP가 192.168.1.100인 경우)
showmount -e 192.168.1.100

# 수동으로 NFS 서버에 마운트
sudo mount -t nfs 192.168.1.100:/srv/nfs/kubedata /mnt
ls /mnt # 마운트된 디렉토리 확인
