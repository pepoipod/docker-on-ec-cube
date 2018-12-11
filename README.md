# docker on ec-cube
ec-cubeをdockerで動かすboiler plateです. 

**EC-CUBE version** =4.0.1   
**PHP version** =7.1    
**MySQL version** =5.7.20

## Requirements
* Docker
* docker-compose
* make

## SET UP
1. `$ make run` を実行.
2. コンテナ起動後、 `$ make create_db` を実行.
3. `localhost:8080` にアクセスし、EC-CUBEをセットアップ. DBの設定は、 種類を `MySQL`、ホストは `db` 、DB名は `eccube` 、 ユーザー名は `root` 、 パスワードは `docker-compose.yml` に記載された `MYSQL_ROOT_PASSWORD` を入力.

## Commands
### コンテナ起動
```
$ make run
```
### コンテナをバックグラウンドで起動
```
$ make run_d
```

### バックグラウンドで起動しているコンテナを停止
```
$ make down
```

## ドキュメント情報
記述日: 2018/12/11   
記述者: 岩本 大樹 daikinecmouth@gmail.com
