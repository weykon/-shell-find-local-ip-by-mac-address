# ./remote_eval.sh <mac address> <user>
arp -a > ips
ip_address=$(grep $1 < ips | grep -E -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')
echo "ip is : "$ip_address
rm ips
ssh $2@$ip_address "echo ok!"