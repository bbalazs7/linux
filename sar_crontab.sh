###DEBIAN
# Collect measurements at 10-minute intervals
*/1 * * * *   /usr/lib/sysstat/sa1 1 1
# Create daily reports and purge old files
0 0 * * *   /usr/lib/sysstat/sa2 -A
###SE-Linux
# Collect measurements at 10-minute intervals
*/1 * * * *   /usr/lib64/sa/sa1 1 1
# Create daily reports and purge old files
0 0 * * *   /usr/lib64/sa/sa2 -A
