# 環境構築

### dockerインストール
- dockerを端末にインストールしてください

### dockerの初期セットアップ
- `$ docker-compose build`
- `$ docker-compose run web bundle install`
- `$ docker-compose run --rm web bundle exec rails db:create db:migrate db:seed_fu`

### サーバ起動
- `$ docker-compose up -d`

### サーバ停止
- `$ docker-compose down`

### ER図作成
- `$ docker-compose run --rm web bundle exec rails erd`

### rubocop
- `$ docker-compose run --rm web bundle exec rubocop`

### brakeman
- `$ docker-compose run --rm web bundle exec brakeman`
