VBoxManage controlvm riemann.osv poweroff
VBoxManage modifyvm "riemann.osv" --intnet2 "virtualcloud" --nic2 intnet --nictype2 virtio --cableconnected2 on --nicpromisc2 allow-all
VBoxManage startvm riemann.osv --type headless

curl 'http://localhost:8001/network/ifconfig/eth1' -s | jq '.config.addr' | xargs echo -n; echo '  riemann'
