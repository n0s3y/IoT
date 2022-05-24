#!/bin/bash
# init

#installeer eerst python3-pip handmatig
function pause(){
   read -p "$*"
}
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo "Dit is het geautomatiseerde script dat firmAE en benodigdheden installeert op jouw nieuwe Kali VM"
#
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
set -e #lijn 22 t/m 29 moeten succesvol uitvoeren, ander exit met error
#Installatie van benodigdheden(Kali)
sudo rm /etc/apt/sources.list
sudo touch /etc/apt/sources.list
sudo tee -a /etc/apt/sources.list<<EOF
deb http://http.kali.org/kali kali-last-snapshot main contrib non-free
EOF
apt-get update
set +e #check voor errors
sudo apt-get install python3-pip
sudo apt update
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
sudo apt-get install -y busybox-static fakeroot git \
    dmsetup kpartx netcat-openbsd nmap python3-psycopg2 \
    snmp uml-utilities util-linux vlan kpartx \
    uml-utilities postgresql git build-essential mtd-utils \
    gzip bzip2 tar arj lhasa p7zip-full cabextract \
    util-linux firmware-mod-kit cramfsswap squashfs-tools \
    zlib1g-dev liblzma-dev liblzo2-dev sleuthkit cpio python-tk python3-tk \
    qemu-system-arm qemu-system-mips qemu-system-x86 \
    qemu-utils python3-pip cowsay 
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo "Kali benodigdheden zijn succesvol geinstalleert"
#
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
#Installatie van benodigdheden (python)
sudo apt install python3-pip
pip install backports.lzma
pip install ubi_reader
pip install git+https://github.com/sviehb/jefferson
pip install git+https://github.com/ahupp/python-magic
pip install cstruct
pip install pylzma
#
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo "Python benodigdheden zijn succesvol geinstalleert"
#
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
#Installatie van qemu
sudo apt install qemu-system-mips qemu-user-static
echo "QEMU is succesvol geinstalleert"
#
#Downloaden van sasquatch

echo -n 'Download nu sasquatch vanuit Teams. Zorg dat sasquatch in jouw Kali Downloads folder staat'
# ...
# call it
pause ' Druk [Enter] key als je sasquatch in je Kali Downloads folder hebt staan...'

#Installatie van sasquatch
cd ~/Downloads/
sudo mv sasquatch /usr/local/bin
sudo chmod +x /usr/local/bin/sasquatch
cd ~
#
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo "sasquatch is succesvol geinstalleert"
#
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
#Installatie van FirmAE
git clone --recursive https://github.com/pr0v3rbs/FirmAE
cd FirmAE
./download.sh
./install.sh
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo "FirmAE is succesvol geinstalleert"
#
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
cowsay Goed gedaan! De installatie is nu succesvol afgerond. Controleer dit door een firmware te emuleren waarvan bekend is bij de SME-ers dat deze emuleerbaar is.
echo "."
sleep 1
echo "."
sleep 1
echo "."

