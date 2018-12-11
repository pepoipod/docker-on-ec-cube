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
2. `$ make create_db` を実行.
3. `localhost:8080` にアクセスし、EC-CUBEをセットアップ. DBの設定は、 `MySQL`