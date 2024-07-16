read -p "Enter directory name to backup: " sdir
if [[ -d $sdir ]];then
	echo "Directory exists,starting with backup"
else
	echo "No Directory with this name."
fi
timestamp=$(date +%Y%m%d_%H%M%S)
backup_file="${sdir}_backup_${timestamp}.tar.gz"
tar -czf $backup_file -C $(dirname $sdir) $(basename $sdir)

echo "Backup Created"
