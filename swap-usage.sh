for m in `ps -aef|grep mysqld|grep -v grep|awk -F' ' '{print $2}'`; do grep  VmSwap /proc/$m/status ; done



## swapiness lekérdezése
cat /proc/sys/vm/swappiness


sar 1 -W