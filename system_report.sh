echo "System Report"
echo "Date : $(date)"
echo "System Uptime : $(uptime -p)"
echo "Logged in users"
who
echo "Disk Usage"
df -h
echo "Memory Usage"
free -h
