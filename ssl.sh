 while [ 1 ]; do
echo -n "\nDamage caused by the execution of this script is not responsible. Do you agree?\n\n이스크립트(아트 ssl 인증서 자동생성 및 자동갱신)을 실행하여 발생한 피해는 책입지지 않습니다. 동의 하십니까? (y/n) : "
read a
if [ x$a = "xy" ]
then
break
else
exit
fi
done

sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update
sudo apt-get install certbot -y
# 업데이트 목록 갱신 및 certbot 설치

sudo apt-get install git -y 
git clone https://github.com/allequalit/ssl.git
cp -r ssl /etc/doit/ 

# git 프로그램 설치, 아트 ssl 자동 생성 및 자동 갱신 소스코드 다운로드, 아트 ssl 자동 생성 및 자동 갱신 소스코드를 /etc/doit/ 디렉터리로 이동

sudo ufw allow 80/tcp

# 우분투 방화벽에서 80/tcp 포트를 오픈합니다.

certbot certonly --standalone -d [자신의 도메인을 입력해주세요]

# 예시 1 : 자신의 도메인이 ael.kr인 경우 9번째줄을 certbot certonly -standalone -d ael.kr 로 대체해주세요.
#  Congratulations! Your certificate and chain have been saved at 이란 문구가 표시되면 ssl 인증서가 정상적으로 생성 되었습니다.

cp -r /etc/letsencrypt/live/[자신의 도메인을 입력해주세요] /etc/ssf/ 

# /etc/ssf/ 폴더 생성 및 ssl 인증서를 /etc/ssf 디렉터리로 이동합니다.

apt-get install cron -y

#crontab 설치
 
crontab /etc/doit/crontab

# 2달마다 ssl 인증서 자동 갱신 
