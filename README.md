# 아트 ssl (아꾸르 트위치 letsencrypt ssl 인증서 자동 생성 및 자동 갱신 .sh) 
 lets encrypt ssl 인증서 자동 생성 및 자동 갱신 봇입니다.<br><br>
프로그램은 오픈소스이며 비상업적, 상업적 용도로 사용가능합니다. <br><br>
실행 가능 운영체제 : Ubuntu 16.04 LTS 이상 <br><br>
# 실행 하기전
자신의 도메인을 서버에 연결해주세요. <br><br>
코드에 적혀있는 설명을 보고 ssl.sh의 27,33,38,44번째 줄을 수정해주세요.<br><br>
코드에 적혀있는 설명을 보고 do.sh의 1,12번째 줄을 수정해주세요.<br><br>
#주의사항 
ssl 인증서는 /etc/ssf 디렉터리에 저장됩니다. <
# 실행하는 법 <br>
sudo bash <br><br>
wget https://sl.ael.kr/ssl.sh <br><br>
sudo sh ssl.sh<br><br>
