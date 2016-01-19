VBoxManage dhcpserver add --netname "virtualcloud" --ip 192.168.59.1 \
    --netmask 255.255.255.0 --lowerip 192.168.59.2 --upperip 192.168.59.255 -enable

sudo ifconfig lo0 169.254.169.254 alias
# sudo ipfw add fwd 127.0.0.1,9090 tcp from me to 10.0.0.1 dst-port 80

#sudo ifconfig lo0 169.254.169.254 -alias
