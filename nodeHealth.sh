#

#########
This script outputs the node health
echo "print the disk space"
df -h
echo

echo "print the memory"
free -g
echo

echo "print the CPU"
nproc

