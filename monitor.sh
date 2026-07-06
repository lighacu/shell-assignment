echo "====================================="
echo "          EC2 MONITORING REPORT"
echo "====================================="
echo "Date: $(date)"
echo 
echo "========== RUNNING SERVICES ==========="
systemctl list-units --type=service --state=running --no-pager
echo
echo "========== CPU USAGE ==========="
top -bn1 | grep "Cpu(s)"
echo 
echo "========== MEMORY USAGE ==========="
free -h 
echo 
echo "========= DISK USAGE ==========="
df -h
echo 
echo "======================================"
echo "         END OF MONITORING REPORT"
echo "======================================"


