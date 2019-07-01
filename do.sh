service [80번포트를 사용하고있는 프로그램] stop 

# 80번 포트를 사용하고있는 프로그램을 중지 시킵니다.
# 80번포트를 사용하고있는 프로그램이 apache인 경우 1번째줄을 service apache2 stop 로 대체해주세요. 
# 80번 포트를 사용하고 있는 프로그램이 nginx인 경우 1번째줄을 service nginx stop 로 대체해주세요.

certbot renew --dry-run

# ssl 인증서를 자동으로 갱신합니다.
# Congratulations, all renewals succeeded. The following certs have been renewed라는 문구가 표시되면 ssl 인증서가 정상적으로 갱신되었습니다.

service [80번포트를 사용해서 중지했던 프로그램] start 

# 80번포트를 사용해서 중지했던 프로그램을 시작합니다.
# 80번포트를 사용해서 중지했던 프로그램이 apache인 경우 1번째줄을 service apache2 start 로 대체해주세요. 
# 80번 포트를 사용해서 중지했던 프로그램이 nginx인 경우 1번째줄을 service nginx start 로 대체해주세요.
