echo "===== EC2 Monitoring Report
====="
echo "Date: $(date)"
echo 

echo "===== Running Services ====="
systemctl list-units --type=service --state=running --no-pager
echo

echo "===== CPU Usage ====="
top -bn1 | grep "Cpu(s)"
echo

echo "===== Memory Usage ====="
free -h
echo

echo "===== Disk Usage ====="
df -h
echo

