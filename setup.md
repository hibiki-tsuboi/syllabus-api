# 環境構築

### 1. dockerインストール
- dockerを端末にインストールしてください

### 2. dockerの初期セットアップ
- `$ docker-compose build`
- `$ docker-compose run web bundle install`
- `$ docker-compose run --rm web bundle exec rails db:create db:migrate db:seed_fu`

### 3. サーバ起動
- `$ docker-compose up -d`

### 4. サーバ停止
- `$ docker-compose down`

### 5. ER図作成
- `$ docker-compose run --rm web bundle exec rails erd`
