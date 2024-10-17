curl -s ifconfig.me | awk '{print "Esta es mi ip publica: " $1}' > Filtro_avanzado.txt 
whoami | awk '{print "Mi usuario es: " $1}' >> Filtro_avanzado.txt 
sudo cat /etc/shadow|grep "$(whoami)"|awk -F: '{print "Mi hash de Usuario es "$2}' >> Filtro_avanzado.txt 
