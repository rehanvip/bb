#!/bin/bash 
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/ menu "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu.sh" && chmod +x /usr/bin/menu

wget -q -O /usr/bin/ menu-trial "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-trial.sh" && chmod +x /usr/bin/menu-trial

wget -q -O /usr/bin/ menu-vmess "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-vmess.sh" && chmod +x /usr/bin/menu-vmess

wget -q -O /usr/bin/ menu-vless "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-vless.sh" && chmod +x /usr/bin/menu-vless

wget -q -O /usr/bin/ running "https://raw.githubusercontent.com/rehanvip/bb/main/menu/running.sh" && chmod +x /usr/bin/running

wget -q -O /usr/bin/ clearcache "https://raw.githubusercontent.com/rehanvip/bb/main/menu/clearcache.sh" && chmod +x /usr/bin/clearcache

wget -q -O /usr/bin/ menu-trgo "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-trgo.sh" && chmod +x /usr/bin/menu-trgo

wget -q -O /usr/bin/ menu-trojan "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-trojan.sh" && chmod +x /usr/bin/menu-trojan

wget -q -O /usr/bin/ menu-ssh "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-ssh.sh" && chmod +x /usr/bin/menu-ssh

wget -q -O /usr/bin/ usernew "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/usernew.sh" && chmod +x /usr/bin/usernew

wget -q -O /usr/bin/ trial "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/trial.sh" && chmod +x /usr/bin/trial

wget -q -O /usr/bin/ renew "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/renew.sh" && chmod +x /usr/bin/renew

wget -q -O /usr/bin/ hapus "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/hapus.sh" && chmod +x /usr/bin/hapus

wget -q -O /usr/bin/ cek "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/cek.sh" && chmod +x /usr/bin/cek

wget -q -O /usr/bin/ member "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/member.sh" && chmod +x /usr/bin/member

wget -q -O /usr/bin/ delete "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/delete.sh" && chmod +x /usr/bin/delete

wget -q -O /usr/bin/ autokill "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/autokill.sh" && chmod +x /usr/bin/autokill

wget -q -O /usr/bin/ ceklim "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/ceklim.sh" && chmod +x /usr/bin/ceklim

wget -q -O /usr/bin/ tendang "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/tendang.sh" && chmod +x /usr/bin/tendang

wget -q -O /usr/bin/ menu-set "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-set.sh" && chmod +x /usr/bin/menu-set

wget -q -O /usr/bin/ menu-domain "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-domain.sh" && chmod +x /usr/bin/menu-domain

wget -q -O /usr/bin/ add-host "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/add-host.sh" && chmod +x /usr/bin/add-host

wget -q -O /usr/bin/ port-change "https://raw.githubusercontent.com/rehanvip/bb/main/port/port-change.sh" && chmod +x /usr/bin/port-change

wget -q -O /usr/bin/ certv2ray "https://raw.githubusercontent.com/rehanvip/bb/main/xray/certv2ray.sh" && chmod +x /usr/bin/certv2ray

wget -q -O /usr/bin/ menu-webmin "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-webmin.sh" && chmod +x /usr/bin/menu-webmin

wget -q -O /usr/bin/ speedtest "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/speedtest_cli.py" && chmod +x /usr/bin/speedtest

wget -q -O /usr/bin/ about "https://raw.githubusercontent.com/rehanvip/bb/main/menu/about.sh" && chmod +x /usr/bin/about

wget -q -O /usr/bin/ auto-reboot "https://raw.githubusercontent.com/rehanvip/bb/main/menu/auto-reboot.sh" && chmod +x /usr/bin/auto-reboot

wget -q -O /usr/bin/ restart "https://raw.githubusercontent.com/rehanvip/bb/main/menu/restart.sh" && chmod +x /usr/bin/restart

wget -q -O /usr/bin/ bw "https://raw.githubusercontent.com/rehanvip/bb/main/menu/bw.sh" && chmod +x /usr/bin/bw

wget -q -O /usr/bin/ port-ssl "https://raw.githubusercontent.com/rehanvip/bb/main/port/port-ssl.sh" && chmod +x /usr/bin/port-ssl

wget -q -O /usr/bin/ port-ovpn "https://raw.githubusercontent.com/rehanvip/pp/main/port/port-ovpn.sh" && chmod +x /usr/bin/port-ovpn

wget -q -O /usr/bin/ xp "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/xp.sh" && chmod +x /usr/bin/xp

wget -q -O /usr/bin/ acs-set "https://raw.githubusercontent.com/rehanvip/bb/main/acs-set.sh" && chmod +x /usr/bin/acs-set

wget -q -O /usr/bin/ sshws "https://raw.githubusercontent.com/rehanvip/bb/main/ssh/sshws.sh" && chmod +x /usr/bin/sshws

wget -q -O /usr/bin/ status "https://raw.githubusercontent.com/rehanvip/bb/main/status.sh" && chmod +x /usr/bin/status

wget -q -O /usr/bin/ menu-bckp "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-bckp.sh" && chmod +x /usr/bin/m-backup

wget -q -O /usr/bin/ backup "https://raw.githubusercontent.com/rehanvip/bb/main/backup/backup.sh" && chmod +x /usr/bin/backup

wget -q -O /usr/bin/ restore "https://raw.githubusercontent.com/rehanvip/bb/main/backup/restore.sh" && chmod +x /usr/bin/restore

wget -q -O /usr/bin/ jam "https://raw.githubusercontent.com/rehanvip/bb/main/jam.sh" && chmod +x /usr/bin/jam

wget -q -O /usr/bin/ add-ws "https://raw.githubusercontent.com/rehanvip/bb/main/xray/add-ws.sh" && chmod +x /usr/bin/add-ws

wget -q -O /usr/bin/ trialvmess "https://raw.githubusercontent.com/rehanvip/bb/main/xray/trialvmess.sh" && chmod +x /usr/bin/trialvmess

wget -q -O /usr/bin/ renew-ws "https://raw.githubusercontent.com/rehanvip/bb/main/xray/renew-ws.sh" && chmod +x /usr/bin/renew-ws

wget -q -O /usr/bin/ del-ws "https://raw.githubusercontent.com/rehanvip/bb/main/xray/del-ws.sh" && chmod +x /usr/bin/del-ws

wget -q -O /usr/bin/ cek-ws "https://raw.githubusercontent.com/rehanvip/bb/main/xray/cek-ws.sh" && chmod +x /usr/bin/cek-ws

wget -q -O /usr/bin/ add-vless "https://raw.githubusercontent.com/rehanvip/bb/main/xray/add-vless.sh" && chmod +x /usr/bin/add-vless

wget -q -O /usr/bin/ trialvless "https://raw.githubusercontent.com/rehanvip/bb/main/xray/trialvless.sh" && chmod +x /usr/bin/trialvless

wget -q -O /usr/bin/ renew-vless "https://raw.githubusercontent.com/rehanvip/bb/main/xray/renew-vless.sh" && chmod +x /usr/bin/renew-vless

wget -q -O /usr/bin/ del-vless "https://raw.githubusercontent.com/rehanvip/bb/main/xray/del-vless.sh" && chmod +x /usr/bin/del-vless

wget -q -O /usr/bin/ cek-vless "https://raw.githubusercontent.com/rehanvip/bb/main/xray/cek-vless.sh" && chmod +x /usr/bin/cek-vless

wget -q -O /usr/bin/ add-tr "https://raw.githubusercontent.com/rehanvip/bb/main/xray/add-tr.sh" && chmod +x /usr/bin/add-tr

wget -q -O /usr/bin/ trialtrojan "https://raw.githubusercontent.com/rehanvip/bb/main/xray/trialtrojan.sh" && chmod +x /usr/bin/trialtrojan

wget -q -O /usr/bin/ del-tr "https://raw.githubusercontent.com/rehanvip/bb/main/xray/del-tr.sh" && chmod +x /usr/bin/del-tr

wget -q -O /usr/bin/ renew-tr "https://raw.githubusercontent.com/rehanvip/bb/main/xray/renew-tr.sh" && chmod +x /usr/bin/renew-tr

wget -q -O /usr/bin/ cek-tr "https://raw.githubusercontent.com/rehanvip/bb/main/xray/cek-tr.sh" && chmod +x /usr/bin/cek-tr

wget -q -O /usr/bin/ addtrgo "https://raw.githubusercontent.com/rehanvip/bb/main/xray/addtrgo.sh" && chmod +x /usr/bin/addtrgo

wget -q -O /usr/bin/ trialtrojango "https://raw.githubusercontent.com/rehanvip/bb/main/xray/trialtrojango.sh" && chmod +x /usr/bin/trialtrojango

wget -q -O /usr/bin/ deltrgo "https://raw.githubusercontent.com/rehanvip/bb/main/xray/deltrgo.sh" && chmod +x /usr/bin/deltrgo

wget -q -O /usr/bin/ renewtrgo "https://raw.githubusercontent.com/rehanvip/bb/main/xray/renewtrgo.sh" && chmod +x /usr/bin/renewtrgo

wget -q -O /usr/bin/ cektrgo "https://raw.githubusercontent.com/rehanvip/bb/main/xray/cektrgo.sh" && chmod +x /usr/bin/cektrgo

wget -q -O /usr/bin/ m-bot "https://raw.githubusercontent.com/rehanvip/bb/main/menu/m-bot.sh" && chmod +x /usr/bin/m-bot

wget -q -O /usr/bin/ m-ip "https://raw.githubusercontent.com/rehanvip/bb/main/menu/m-ip.sh" && chmod +x /usr/bin/m-ip

wget -q -O /usr/bin/ update "https://raw.githubusercontent.com/rehanvip/bb/main/menu/update.sh" && chmod +x /usr/bin/update

wget -q -O /usr/bin/ menu-update "https://raw.githubusercontent.com/rehanvip/bb/main/menu/menu-update.sh" && chmod +x /usr/bin/menu-update

echo -e " [INFO] Update Successfully"
sleep 2
exit
