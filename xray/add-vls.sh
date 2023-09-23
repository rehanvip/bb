#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################

# // Exporting Language to UTF-8
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
BBall='\E[44;1;39m'       #Ibam
TC='\E[0m'
NC='\e[0m'

# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

clear
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`
if [ "$cekray" = "XRAY" ]; then
domain=`cat /etc/xray/domain`
else
domain=`cat /etc/v2ray/domain`
fi
tls="$(cat ~/log-install.txt | grep -w "Vless WS TLS" | cut -d: -f2|sed 's/ //g')"
none="$(cat ~/log-install.txt | grep -w "Vless WS none TLS" | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${CLIENT_EXISTS} == '0' ]]; do
echo -e "${BIRed}┌─────────────────────────────────────────────────┐${NC}"
echo -e "$BIYellow ${NC}             ${BIYellow}• Add Vless Account •                ${NC}"
echo -e "$BIYellow ${NC}             ${BIYellow}• Manual Uuid User •                ${NC}"
echo -e "${BIRed}└─────────────────────────────────────────────────┘${NC}"

		read -rp "Username: " -e user
		CLIENT_EXISTS=$(grep -w $user /etc/xray/config.json | wc -l)

		if [[ ${CLIENT_EXISTS} == '1' ]]; then
clear
		echo -e "${BIRed}┌─────────────────────────────────────────────────┐${NC}"
		echo -e "$BIYellow ${NC}            ${BIYellow}• Add Vless Account •                ${NC}"
		echo -e "${BIRed}└─────────────────────────────────────────────────┘${NC}"
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			echo ""
			read -n 1 -s -r -p "Press any key to back on menu"
			menu-vless
		fi
	done
echo -e ""
read -p "Masukan (uuid): " uuid
echo -e ""
read -p "Expired (days): " masaaktif
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
harini=`date -d "0 days" +"%Y-%m-%d"`
sed -i '/#vless$/a\#vl '"$user $exp $uuid"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
sed -i '/#vlessgrpc$/a\#vlg '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /etc/xray/config.json
vlesslink1="vless://${uuid}@${domain}:$tls?path=/vless&security=tls&encryption=none&host=${domain}&type=ws&sni=bug.mu#${user}"
vlesslink2="vless://${uuid}@${domain}:80?path=/vless&security=none&encryption=none&host=${domain}&type=ws#${user}"
vlesslink3="vless://${uuid}@${domain}:$tls?mode=gun&security=tls&encryption=none&type=grpc&serviceName=vless-grpc&sni=${domain}#${user}"

vless1="$(echo $vlesslink1 | base64 -w 0)"
vless2="$(echo $vlesslink2 | base64 -w 0)"
vless3="$(echo $vlesslink3 | base64 -w 0)"

TEXT="
<code>──────────────────────</code>
<code>    Xray Vless Account</code>
<code>──────────────────────</code>
<code>Remarks      : </code> <code>${user}</code>
<code>Domain       : </code> <code>${domain}</code>
<code>City         : </code> <code>${CITY}</code>
<code>ISP          : </code> <code>${ISP}</code>
<code>Port TLS     : 443</code>
<code>Port NTLS    : 80,8880</code>
<code>Port GRPC    : 443</code>
<code>User ID      : </code> <code>${uuid}</code>
<code>AlterId      : 0</code>
<code>Security     : auto</code>
<code>Network      : WS or gRPC</code>
<code>Path vless   : </code> <code>/vless</code>
<code>ServiceName  : </code> <code>/vless-grpc</code>
<code>──────────────────────</code>
<code>Link TLS     :</code> 
<code>${vless1}</code>
<code>──────────────────────</code>
<code>Link NTLS    :</code> 
<code>${vless2}</code>
<code>──────────────────────</code>
<code>Link GRPC    :</code> 
<code>${vless3}</code>
<code>──────────────────────</code>
<code>Created      : $harini</code>
<code>Expired On   : $exp</code>
<code>──────────────────────</code>
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null

clear
clear
clear
clear
systemctl restart xray > /dev/null 2>&1
echo -e "${BIRed}────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}   • XRAY VLESS •    ${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIRed}────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}Remarks      ${BIBlue}: ${WH}${user}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}Domain       ${BIBlue}: ${WH}${domain}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1${NC}${WH}Wildcard     ${BIBlue}: ${WH}(bug.com).${domain}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}Port GRPC    ${BIBlue}: ${WH}443" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}Port TLS     ${BIBlue}: ${WH}443" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}Port none TLS${BIBlue}: ${WH}80,8880" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}id           ${BIBlue}: ${WH}${uuid}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}Encryption   ${BIBlue}: ${WH}none" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}Network      ${BIBlue}: ${WH}ws" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}Path         ${BIBlue}: ${WH}/vless" | tee -a /etc/log-create-user.log
echo -e "${BICyan}${NC}${WH}ServiceName  ${BIBlue}: ${WH}vless-grpc" | tee -a /etc/log-create-user.log
echo -e "${BIRed}────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}Link Websocket TLS :${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIBlue}${vlesslink1}${NC}"  | tee -a /etc/log-create-user.log
echo -e "${BIRed}────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}Link Websocket non TLS :${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIBlue}${vlesslink2}${NC}"  | tee -a /etc/log-create-user.log
echo -e "${BIRed}────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan}Link gRPC :${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIBlue}${vlesslink3}${NC}"  | tee -a /etc/log-create-user.log
echo -e "${BIRed}────────────${NC}" | tee -a /etc/log-create-user.log
echo -e "${BICyan} Expired On   : $exp ${NC}" | tee -a /etc/log-create-user.log
echo -e "${BIRed}────────────${NC}" | tee -a /etc/log-create-user.log
read -n 1 -s -r -p "Press any key to back on menu"
menu-vless
