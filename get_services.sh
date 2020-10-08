CURDIR=$(pwd)
input="$CURDIR/uphosts.dat"

rm -r $CURDIR/service_results/
mkdir $CURDIR/service_results
while IFS= read -r line
do
 echo "Getting services for $line"
 nmap -sV $line > "$CURDIR/service_results/$line.txt"
done < "$input"
