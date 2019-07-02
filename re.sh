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

sudo apt-get update
sudo apt-get install git -y 
sudo git clone https://github.com/allequalit/ssl.git
sudo cp -r ssl /etc/

# 업데이트 목록 갱신 및 git 프로그램 설치, 아트 ssl 자동 생성 및 자동 갱신 소스코드 다운로드, 
# 아트 ssl 자동 생성 및 자동 갱신 소스코드를 /etc/ssl/ 디렉터리로 이동
