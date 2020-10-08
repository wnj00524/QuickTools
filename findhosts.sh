ME=$(ip route get 8.8.8.8 | sed -n '/src/{s/.*src *\([^ ]*\).*/\1/p;q}')
CURDIR=$(pwd)
echo $CURDIR/uphosts.dat
echo "IP:$ME" 
nmap -n -sn $ME/24 -oG  - | awk '/Up$/{print $2}' > $CURDIR/uphosts.dat
