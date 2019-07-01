sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update
sudo apt-get install certbot -y
# 업데이트 목록 갱신 및 certbot 설치

sudo ufw allow 80/tcp

# 우분투 방화벽에서 80/tcp 포트를 오픈합니다.

sudo service [80번포트를 사용하고있는 프로그램] stop 

# 80번 포트를 사용하고있는 프로그램을 중지 시킵니다.
# 80번포트를 사용하고있는 프로그램이 apache인 경우 1번째줄을 service apache2 stop 로 대체해주세요. 
# 80번 포트를 사용하고 있는 프로그램이 nginx인 경우 1번째줄을 service nginx stop 로 대체해주세요.

sudo certbot certonly --standalone -d [자신의 도메인을 입력해주세요]

# 예시 : 자신의 도메인이 ael.kr인 경우 9번째줄을 certbot certonly -standalone -d ael.kr 로 대체해주세요.
#  Congratulations! Your certificate and chain have been saved at 이란 문구가 표시되면 ssl 인증서가 정상적으로 생성 되었습니다.

# ssl 인증서는 /etc/letsencrypt/live/[자신의 도메인을 입력해주세요]/ 폴더에 있습니다.
# 예시 : 자신으 도메인이 ael.kr인 경우 /etc/letsencrypt/live/ael.kr/ 폴더에 ssl 인증서가 있습니다.

sudo service [80번포트를 사용해서 중지했던 프로그램] start 

# 80번포트를 사용해서 중지했던 프로그램을 시작합니다.
# 80번포트를 사용해서 중지했던 프로그램이 apache인 경우 1번째줄을 service apache2 start 로 대체해주세요. 
# 80번 포트를 사용해서 중지했던 프로그램이 nginx인 경우 1번째줄을 service nginx start 로 대체해주세요.


sudo apt-get install cron -y

#crontab 설치
 
sudo crontab /etc/doit/crontab

# 2달마다 ssl 인증서 자동 갱신 
