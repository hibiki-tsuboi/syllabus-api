# 環境構築

### dockerインストール
- dockerを端末にインストールしてください

### dockerの初期セットアップ
- `$ docker-compose build`
- `$ docker-compose run web bundle install`
- `$ docker-compose run --rm web bundle exec rails db:create db:migrate db:seed_fu`

### docker起動
- `$ docker-compose up -d`

### docker停止
- `$ docker-compose down`

### ER図生成
- `$ docker-compose run --rm web bundle exec rails erd`

### 静的解析（コードチェック）
- `$ docker-compose run --rm web bundle exec rubocop`

### 静的解析（セキュリティチェック）
- `$ docker-compose run --rm web bundle exec brakeman`
