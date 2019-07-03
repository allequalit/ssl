sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update
sudo apt-get install certbot -y
# 업데이트 목록 갱신 및 certbot 설치

sudo ufw allow 80/tcp

# 우분투 방화벽에서 80/tcp 포트를 오픈합니다.

sudo service [80번포트를 사용하고있는 프로그램] stop 

# Stop the program that is using port 80.
# If the program using port 80 is apache, replace line 10 with service apache2 stop.
# If the program using port 80 is nginx, replace line 10 with service nginx stop.

# 80번 포트를 사용하고있는 프로그램을 중지 시킵니다.
# 80번포트를 사용하고있는 프로그램이 apache인 경우 10번째줄을 service apache2 stop 로 대체해주세요. 
# 80번 포트를 사용하고 있는 프로그램이 nginx인 경우 10번째줄을 service nginx stop 로 대체해주세요.

sudo certbot certonly --standalone -d [my domain]

# Example: If your domain is ael.kr replace the 20th line with certbot certonly -standalone -d ael.kr
# The ssl certificate was generated normally when the phrase " Congratulations! Your certificate and chain have been saved at" was displayed.
# The ssl certificate is located in the folder /etc/letsencrypt/live/[my domain]/.
# Example: If your domain is ael.kr you have an ssl certificate in the /etc/letsencrypt/live/ael.kr/ folder

# 예시 : 자신의 도메인이 ael.kr인 경우 20번째줄을 certbot certonly -standalone -d ael.kr 로 대체해주세요.
#  Congratulations! Your certificate and chain have been saved at 이란 문구가 표시되면 ssl 인증서가 정상적으로 생성 되었습니다.
# ssl 인증서는 /etc/letsencrypt/live/[mydomain]/ 폴더에 있습니다.
# 예시 : 자신으 도메인이 ael.kr인 경우 /etc/letsencrypt/live/ael.kr/ 폴더에 ssl 인증서가 있습니다.

sudo service [80번포트를 사용해서 중지했던 프로그램] start 

# Use port 80 to start the program that you stopped.
# If the program you stopped using port 80 is apache, replace line 32 with service apache2 start.
# If the program you stopped using port 80 is nginx, replace line 32 with service nginx start.

# 80번포트를 사용해서 중지했던 프로그램을 시작합니다.
# 80번포트를 사용해서 중지했던 프로그램이 apache인 경우 32번째줄을 service apache2 start 로 대체해주세요. 
# 80번 포트를 사용해서 중지했던 프로그램이 nginx인 경우 32번째줄을 service nginx start 로 대체해주세요.

sudo apt-get install cron -y

#crontab 설치
 
sudo crontab  /etc/ssl/crontab

# 2달마다 ssl 인증서 자동 갱신 
