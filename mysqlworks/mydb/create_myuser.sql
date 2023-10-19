-- root 계정, db 이름이 sys
create user 'myuser'@'localhost' identified by 'pwmyuser';

-- myuser에게 모든 권한 부여
grant all privileges on *.* to 'myuser'@'localhost';