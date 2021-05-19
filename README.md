# Mimpi_coffee

## サイト概要
宮崎県で２０年以上続く、自家焙煎珈琲専門店のECサイトです。<br>
この珈琲屋さんは、宮崎県初の女性焙煎士が営むお店で、店主が作るとっても美味しいコーヒーは地元の方から愛されています。<br>
そんなコーヒーを一人でも多くの方に楽しんで頂くために作りました。

### テーマを選んだ理由
コロナ禍で、大きな影響を受けた飲食業界。この珈琲屋さんも例外ではなく、大きなダメージを受けました。<br>
そんなお店の力に少しでもなりたいと考え、このテーマを選びました。

### ターゲットユーザ
- 美味しいコーヒーをお家でも楽しみたい方
- いろんな種類のコーヒーを飲んでみたい方
- 本格的なコーヒーを買いたい方
- 珈琲屋さんのファンの方

### 主な利用シーン
- 美味しいコーヒーを自分のために買うことも、住所登録をすることで、友人、家族に送ることもできます。
- 会員登録することにより、過去に買ったコーヒーの履歴を確認することができます。
- 購入履歴から自分の好みの味を知ることができます。

## 機能一覧・設計図

### 機能一覧
https://docs.google.com/spreadsheets/d/1MsZHteQ1m3APSkF2Fw6SFmiIpsnbwX7TT-gfkwR2mKM/edit#gid=0

### ER図
https://drive.google.com/file/d/1I-IrL59sUQhD4FQHPjH2gTNft5ktt1wa/view?usp=sharing

### テーブル定義書
https://docs.google.com/spreadsheets/d/1pejckANbwZZGfgga_1cYTebJdFUQUvgd1xTOD9PQEcs/edit?usp=sharing

### 詳細設計書
https://drive.google.com/file/d/1d1iHwrQb43sJXII_D6hCGHzmM_PNdMO5/view?usp=sharing

## 環境・使用技術
### 開発環境
- OS:Linux(CentOS)
- DB:SQLite
- IDE:Cloud9

### フロントエンド
- Bootstrap 4.5
- JavaScript、jQuery、Ajax

### バックエンド
- Ruby 2.6.3
- Rails 5.2.5

### 本番環境
- AWS(EC2、 RDS for MySQL)
- MySQL 5.7.22
- Nginx、 Puma

### テスト
- RSpec
- GithubActions(CI/CD)
