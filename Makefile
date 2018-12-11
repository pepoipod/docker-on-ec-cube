# タスクを指定しないmakeの実行を禁止する.
all:
	echo "make単体での実行は禁止されています.タスクを指定して実行して下さい."
	exit 1

# docker imageをbuildする.
build:
	docker-compose build

# コンテナを起動する.
run:
	docker-compose up --build

# コンテナをバックグランドで起動する.
run_d:
	docker-compose up --build -d

# バックグランドで起動しているコンテナを停止する.
down:
	docker-compose down

# 起動しているrailsサーバーのコンテナにbashでログインする.
login:
	docker exec -it ec_cube_test_app bash

# db作成（未テスト）
create_db:
	docker exec -it ec_cube_test_db bash -c "mysql -uroot -p $MYSQL_ROOT_PASSWORD -e \"CREATE DATABASE eccube /*\!40100 DEFAULT CHARACTER SET utf8 */;\""