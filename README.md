# gonggam-blog

2019-06-29(토)에 열리는 공감 세미나를 위해 개발한 블로그이다.

## Docker

### Docker Clear

```sh
docker stop $(docker ps -a -q) ;
docker rm $(docker ps -a -q) ;
docker rmi $(docker images -q) --force ;
docker system prune;
docker system prune --volumes;

kill -kill `lsof -t -i tcp:3000`
```

### Docker Compose

```sh
# start
docker-compose up --build
docker-compose up -d

# view logs
docker-compose logs

# stop
docker-compose down
```

## Tomcat

- http://localhost:8080/db-webapp/
  - DB 테이블과 데이터를 출력해주는 JSP 페이지
- http://localhost:8080/gonggam
  - 공감블로그 페이지

## Adminer

- http://localhost:9080
  - DB를 관리할 수 있는 GUI를 제공하는 페이지

## MySQL

```sh
docker exec -it docker-tomcat-mysql_db_1 /bin/bash
mysql -u root -p

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| board              |
| information_schema |
| ...                |
+--------------------+
```

### MySQL data

- map volumes to local directory `./db/data`
