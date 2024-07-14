curr_disk=$(pwd)
#echo $curr_disk
disk_usage=$(df -h "$curr_disk"|awk 'NR==2 {print $5}'| cut -d'%' -f1)
limit=80
echo $disk_usage
if [[ "$disk_usage" -gt "limit" ]];
then
	echo "Watning: Disk usage"
else
	echo "Disk usage is within the limit"
fi
