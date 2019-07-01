# 아트 ssl (아꾸르 트위치 letsencrypt ssl 인증서 자동 생성 및 자동 갱신 .sh) 
 lets encrypt ssl 인증서 자동 생성 및 자동 갱신 봇입니다.<br><br>
프로그램은 오픈소스이며 비상업적, 상업적 용도로 사용가능합니다. <br><br>
실행 가능 운영체제 : Ubuntu 16.04 LTS 이상 <br><br>
# 실행 하기전
자신의 도메인을 서버에 연결해주세요. <br><br> 
# 주의사항 
(프로그램 실행 완료후) /etc/ssf/ 폴더에 접근하면 ssl 인증서가 있는 폴더로 접근할수있습니다. (심볼릭 링크)
# 실행하는 법 <br>
이 명령어<br><br> 
[ sudo bash <br><br>
sudo wget https://sl.ael.kr/re.sh <br><br>
sduo sh re.sh  ]를 실행한후<br><br> 
코드에 적혀있는 설명을 보고 /etc/doit/ssl.sh의 27,33,38,44번째줄, /etc/doit/do.sh의 1,12,18번째줄을 수정해주세요.<br><br>
코드 수정이 완료되면 아래에 있는 명령어를 실행해주세요. <br><br>
sudo sh /etc/doit/ssl.sh <br><br> 
