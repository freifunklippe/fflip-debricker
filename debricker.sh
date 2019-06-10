#! /bin/bash

# Debricker
#
# Rescue Script to debrick router devices
# Created by Collimas (mb@freifunk-lippe.de)
# License: GPLv3
# Requirements: tftp-hpa & unzip packages
#

# Variables

# Functions

wr841v8ff() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://wizard.freifunk-lippe.de/images/stable/factory/gluon-fflip-1.1.3-20190502-tp-link-tl-wr841n-nd-v8.bin"
echo "Freifunk-Firmware erfolgreich heruntergeladen"
cp gluon-fflip*.bin /srv/tftp/wr841nv8_tp_recovery.bin
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

wr841v8stock() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://static.tp-link.com/TL-WR841N(UN)_V8_170210.zip"
unzip -j TL-WR841*.zip
rm TL-WR841*.zip
echo "Hersteller-Firmware erfolgreich heruntergeladen und entpackt"
mv wr841*.bin orig.bin
dd if=orig.bin of=wr841nv8_tp_recovery.bin skip=257 bs=512
cp wr841nv8_tp_recovery.bin /srv/tftp/
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste drücken) ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

wr841v9ff() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://wizard.freifunk-lippe.de/images/stable/factory/gluon-fflip-1.1.3-20190502-tp-link-tl-wr841n-nd-v9.bin"
echo "Freifunk-Firmware erfolgreich heruntergeladen"
cp gluon-fflip*.bin /srv/tftp/wr841nv9_tp_recovery.bin
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

wr841v9stock() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://static.tp-link.com/res/down/soft/TL-WR841N_V9_150310.zip"
unzip -j TL-WR841*.zip
rm TL-WR841*.zip
echo "Hersteller-Firmware erfolgreich heruntergeladen und entpackt"
mv wr841*.bin orig.bin
dd if=orig.bin of=wr841nv9_tp_recovery.bin skip=257 bs=512
cp wr841nv9_tp_recovery.bin /srv/tftp/
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste drücken) ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

wr841v10ff() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://wizard.freifunk-lippe.de/images/stable/factory/gluon-fflip-1.1.3-20190502-tp-link-tl-wr841n-nd-v10.bin"
echo "Freifunk-Firmware erfolgreich heruntergeladen"
cp gluon-fflip*.bin /srv/tftp/wr841nv10_tp_recovery.bin
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

wr841v10stock() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://static.tp-link.com/res/down/soft/TL-WR841N_V10_150310.zip"
unzip -j TL-WR841*.zip
rm TL-WR841*.zip
echo "Hersteller-Firmware erfolgreich heruntergeladen und entpackt"
mv wr841*.bin orig.bin
dd if=orig.bin of=wr841nv10_tp_recovery.bin skip=257 bs=512
cp wr841nv10_tp_recovery.bin /srv/tftp/
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste drücken) ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

wr841v11ff() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://wizard.freifunk-lippe.de/images/stable/factory/gluon-fflip-1.1.3-20190502-tp-link-tl-wr841n-nd-v11.bin"
echo "Freifunk-Firmware erfolgreich heruntergeladen"
cp gluon-fflip*.bin /srv/tftp/wr841nv11_tp_recovery.bin
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

wr841v11stock() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://static.tp-link.com/TL-WR841N(EU)_V11_160325_1473219209872x.zip"
unzip -j TL-WR841*.zip
rm TL-WR841*.zip
echo "Hersteller-Firmware erfolgreich heruntergeladen und entpackt"
mv wr841*.bin orig.bin
dd if=orig.bin of=wr841nv11_tp_recovery.bin skip=257 bs=512
cp wr841nv11_tp_recovery.bin /srv/tftp/
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste drücken) ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

wr841v12ff() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://wizard.freifunk-lippe.de/images/stable/factory/gluon-fflip-1.1.3-20190502-tp-link-tl-wr841n-nd-v12.bin"
echo "Freifunk-Firmware erfolgreich heruntergeladen"
cp gluon-fflip*.bin /srv/tftp/wr841nv11_tp_recovery.bin
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

wr841v12stock() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/wr841temp
cd /tmp/wr841temp
wget "https://static.tp-link.com/TL-WR841N(EU)_V12_160624_1476692106947j.zip"
unzip -j TL-WR841*.zip
rm TL-WR841*.zip
echo "Hersteller-Firmware erfolgreich heruntergeladen und entpackt"
mv wr841*.bin orig.bin
dd if=orig.bin of=wr841nv11_tp_recovery.bin skip=257 bs=512
cp wr841nv11_tp_recovery.bin /srv/tftp/
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste drücken) ein."
echo "4. Warten Sie ca. 5 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}


archerc50v3ff() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/archerc50temp/v3
cd /tmp/archerc50temp
wget "https://static.tp-link.com/2018/201804/20180420/Archer%20C50(EU)_V3_171227.zip"
unzip -j Archer*.zip -d v3
rm Archer*.zip
echo "Hersteller-Firmware erfolgreich heruntergeladen und entpackt"
cd v3
wget "https://wizard.freifunk-lippe.de/images/stable/sysupgrade/gluon-fflip-1.1.3-20190502-tp-link-archer-c50-v3-sysupgrade.bin"
echo "Freifunk-Firmware erfolgreich heruntergeladen"
mkdir tftp
echo "Verzeichnis tftp erfolgreich angelegt"
cp Archer*.bin tftp/tpl.bin
cp gluon*.bin tftp/owrt.bin
cd tftp
dd if=/dev/zero of=tp_recovery.bin bs=196608 count=1
dd if=tpl.bin of=tmp.bin bs=131584 count=1
dd if=tmp.bin of=boot.bin bs=512 skip=1
cat boot.bin >> tp_recovery.bin
cat owrt.bin >> tp_recovery.bin
cd ..
rm tftp/owrt.bin
rm tftp/tpl.bin
rm tftp/boot.bin
rm tftp/tmp.bin
rm *.bin
rm *.pdf
cp tftp/tp_recovery.bin /srv/tftp/
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste (versenkte Taste mit Büroklammer drücken) ein."
echo "4. Warten Sie ca. 10 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

archerc50v3stock() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/archerc50temp
cd /tmp/archerc50temp
wget "https://static.tp-link.com/2018/201804/20180420/Archer%20C50(EU)_V3_171227.zip"
unzip -j Archer*.zip
rm Archer*.zip
echo "Hersteller-Firmware erfolgreich heruntergeladen und entpackt"
mv Archer*.bin orig.bin
dd if=orig.bin of=tp_recovery.bin skip=1 bs=512
cp tp_recovery.bin /srv/tftp/
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste (versenkte Taste mit Büroklammer drücken) ein."
echo "4. Warten Sie ca. 10 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

archerc50v4ff() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/archerc50temp/v4
cd /tmp/archerc50temp
wget "https://static.tp-link.com/2018/201805/20180528/Archer%20C50(EU)_V4_180313.zip"
unzip -j Archer*.zip -d v4
rm Archer*.zip
echo "Hersteller-Firmware erfolgreich heruntergeladen und entpackt"
cd v4
wget "https://wizard.freifunk-lippe.de/images/stable/sysupgrade/gluon-fflip-1.1.3-20190502-tp-link-archer-c50-v4-sysupgrade.bin"
echo "Freifunk-Firmware erfolgreich heruntergeladen"
mkdir tftp
echo "Verzeichnis tftp erfolgreich angelegt"
cp Archer*.bin tftp/tpl.bin
cp gluon*.bin tftp/owrt.bin
cd tftp
dd if=/dev/zero of=tp_recovery.bin bs=196608 count=1
dd if=tpl.bin of=tmp.bin bs=131584 count=1
dd if=tmp.bin of=boot.bin bs=512 skip=1
cat boot.bin >> tp_recovery.bin
cat owrt.bin >> tp_recovery.bin
cd ..
rm tftp/owrt.bin
rm tftp/tpl.bin
rm tftp/boot.bin
rm tftp/tmp.bin
rm *.bin
rm *.pdf
cp tftp/tp_recovery.bin /srv/tftp/
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste (versenkte Taste mit Büroklammer drücken) ein."
echo "4. Warten Sie ca. 10 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}

archerc50v4stock() {
ifconfig eth0:0 192.168.0.66 netmask 255.255.255.0 up
systemctl restart tftpd-hpa
rm -rf /tmp/*
rm -rf /srv/tftp/*.bin
mkdir -p /tmp/archerc50temp
cd /tmp/archerc50temp
wget "https://static.tp-link.com/2018/201805/20180528/Archer%20C50(EU)_V4_180313.zip"
unzip -j Archer*.zip
rm Archer*.zip
echo "Hersteller-Firmware erfolgreich heruntergeladen und entpackt"
mv Archer*.bin orig.bin
dd if=orig.bin of=tp_recovery.bin skip=1 bs=512
cp tp_recovery.bin /srv/tftp/
echo
echo "1. Verbinden Sie nun die blaue WAN-Buchse des Routers mit dem Netzwerk."
echo "2. Schalten Sie den Router aus."
echo "3. Schalten Sie den Router bei gedrückter Reset-Taste (versenkte Taste mit Büroklammer drücken) ein."
echo "4. Warten Sie ca. 10 Sekunden bis Sie die Reset-Taste loslassen."
echo "5. Der Router sollte nach ca. 1 Minute neu starten und funktionsfähig sein."
echo
read -p "Bitte ENTER drücken um fortzufahren."
clear
auswahl
}



auswahl() {
 cd
 echo "--- D E B R I C K E R ---"
 echo "Rettungs-Script für gebrickte Router - folgen Sie bitte den Anweisungen."
 echo "Während der Ausführung des Scripts wird eine Internet-Verbindung benötigt."
 echo
 PS3='Bitte Routermodell auswählen: '
 options=("TP-Link TL-WR841 v8 Freifunk" "TP-Link TL-WR841 v8 Hersteller" "TP-Link TL-WR841 v9 Freifunk" "TP-Link TL-WR841 v9 Hersteller" "TP-Link TL-WR841 v10 Freifunk" "TP-Link TL-WR841 v10 Hersteller" "TP-Link TL-WR841 v11 Freifunk" "TP-Link TL-WR841 v11 Hersteller" "TP-Link TL-WR841 v12 Freifunk" "TP-Link TL-WR841 v12 Hersteller" "TP-Link Archer C50 v3 Freifunk" "TP-Link Archer C50 v3 Hersteller" "TP-Link Archer C50 v4 Freifunk" "TP-Link Archer C50 v4 Hersteller" "Beenden")
 select opt in "${options[@]}"
 do
     case $opt in
         "TP-Link TL-WR841 v8 Freifunk")
              echo "Du hast TP-Link TL-WR841 v8 Freifunkk ausgewählt. Weiter geht's..."
              wr841v8ff
              exit
              ;;
         "TP-Link TL-WR841 v8 Hersteller")
              echo "Du hast TP-Link TL-WR841 v8 Hersteller ausgewählt. Weiter geht's..."
              wr841v8stock
              exit
              ;;
         "TP-Link TL-WR841 v9 Freifunk")
              echo "Du hast TP-Link TL-WR841 v9 Freifunkk ausgewählt. Weiter geht's..."
              wr841v9ff
              exit
              ;;
         "TP-Link TL-WR841 v9 Hersteller")
              echo "Du hast TP-Link TL-WR841 v9 Hersteller ausgewählt. Weiter geht's..."
              wr841v9stock
              exit
              ;;
         "TP-Link TL-WR841 v10 Freifunk")
              echo "Du hast TP-Link TL-WR841 v10 Freifunkk ausgewählt. Weiter geht's..."
              wr841v10ff
              exit
              ;;
         "TP-Link TL-WR841 v10 Hersteller")
              echo "Du hast TP-Link TL-WR841 v10 Hersteller ausgewählt. Weiter geht's..."
              wr841v10stock
              exit
              ;;
         "TP-Link TL-WR841 v11 Freifunk")
              echo "Du hast TP-Link TL-WR841 v11 Freifunkk ausgewählt. Weiter geht's..."
              wr841v11ff
              exit
              ;;
         "TP-Link TL-WR841 v11 Hersteller")
              echo "Du hast TP-Link TL-WR841 v11 Hersteller ausgewählt. Weiter geht's..."
              wr841v11stock
              exit
              ;;
         "TP-Link TL-WR841 v12 Freifunk")
              echo "Du hast TP-Link TL-WR841 v12 Freifunkk ausgewählt. Weiter geht's..."
              wr841v12ff
              exit
              ;;
         "TP-Link TL-WR841 v12 Hersteller")
              echo "Du hast TP-Link TL-WR841 v12 Hersteller ausgewählt. Weiter geht's..."
              wr841v12stock
              exit
              ;;
         "TP-Link Archer C50 v3 Freifunk")
              echo "Du hast TP-Link Archer C50 v3 Freifunk ausgewählt. Weiter geht's..."
              archerc50v3ff
              exit
              ;;
         "TP-Link Archer C50 v3 Hersteller")
              echo "Du hast TP-Link Archer C50 v3 Hersteller ausgewählt. Weiter geht's..."
              archerc50v3stock
              exit
              ;;
         "TP-Link Archer C50 v4 Freifunk")
              echo "Du hast TP-Link Archer C50 v3 Freifunk ausgewählt. Weiter geht's..."
              archerc50v4ff
              exit
              ;;
         "TP-Link Archer C50 v4 Hersteller")
              echo "Du hast TP-Link Archer C50 v3 Hersteller ausgewählt. Weiter geht's..."
              archerc50v4stock
              exit
              ;;

         "Beenden")
              break
              ;;
         *) echo "Ungültige Auswahl $REPLY";;
     esac
 done
}

# Main

clear
auswahl
