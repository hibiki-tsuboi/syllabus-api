# 環境構築

### dockerインストール
- dockerを端末にインストールしてください

### dockerの初期セットアップ
- `$ docker-compose build`
- `$ docker-compose run --rm web bundle install`
- `$ docker-compose run --rm web bundle exec rails db:create db:migrate db:seed_fu`

### docker起動
- `$ docker-compose up -d`

### docker停止
- `$ docker-compose down`

### リクエスト方法（部分一致検索）
- `$ curl http://localhost:3000/api/v1/lectures?keyword=ガイダンス&teacher_name=山田`

### ER図生成
- `$ docker-compose run --rm web bundle exec rails erd`

### 静的解析（コードチェック）
- `$ docker-compose run --rm web bundle exec rubocop`

### 静的解析（セキュリティチェック）
- `$ docker-compose run --rm web bundle exec brakeman`
