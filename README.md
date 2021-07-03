# [MimpiCoffee](https://mimpi.shop)

## サイト概要
<img width="1078" alt="mimpi_summarize" src="https://user-images.githubusercontent.com/75741350/121880795-64a87380-cd49-11eb-8f1e-e8931f7b71bb.png">

[夢珈琲みんぴ](https://mimpi.shop)（ゲストログインできます）<br>
宮崎県で２０年以上続く、自家焙煎珈琲専門店のECサイトです。<br>
この珈琲屋さんは、家族で営まれており、アットホームな雰囲気と、<br>
こだわりの自家焙煎コーヒーは地元の方から愛されています。<br>
そんなコーヒーを一人でも多くの方に楽しんで頂くために作りました。

### テーマを選んだ理由
コロナ禍で、大きな影響を受けた飲食業界。この珈琲屋さんも例外ではなく、大きなダメージを受けました。<br>
そんなお店の力に少しでもなりたいと考え、このテーマを選びました。

### ターゲットユーザー
- 美味しいコーヒーをお家でも楽しみたい方
- いろんな種類のコーヒーを飲んでみたい方
- 本格的なコーヒーを買いたい方
- 珈琲屋さんのファンの方

### 主な利用シーン
- 美味しいコーヒーを自分のために買うことも、住所登録をすることで、友人、家族に送ることもできます。
- 会員登録することにより、過去に買ったコーヒーの履歴を確認することができます。
- 購入履歴から得られたデータより自分の好みの味を知ることができます。

## 機能一覧

### 主要な機能
 1. ユーザー認証
 2. 管理者機能(ユーザー管理・商品管理・注文管理)
 3. ユーザーマイページ(購入履歴・配送先・登録情報)
 4. 商品一覧・詳細機能
 5. いいね機能(非同期通信)
 6. ランキング機能
 7. 好みのグラフ化
 8. お問合せ機能
 9. 産地検索機能(GoogleMapAPI使用)
 10. RSpec

 - [機能詳細](https://docs.google.com/spreadsheets/d/1MsZHteQ1m3APSkF2Fw6SFmiIpsnbwX7TT-gfkwR2mKM/edit#gid=0)

### 設計書・インフラ構成図
<img width="950" alt="インフラ構成図" src="https://user-images.githubusercontent.com/75741350/121875212-2ad46e80-cd43-11eb-9ad5-95391b3b7997.png">

 - [ER図](https://drive.google.com/file/d/1I-IrL59sUQhD4FQHPjH2gTNft5ktt1wa/view?usp=sharing) (draw.io)

 - [テーブル定義書](https://docs.google.com/spreadsheets/d/1pejckANbwZZGfgga_1cYTebJdFUQUvgd1xTOD9PQEcs/edit?usp=sharing) (スプレッドシート)

 - [詳細設計書](https://drive.google.com/file/d/1d1iHwrQb43sJXII_D6hCGHzmM_PNdMO5/view?usp=sharing) (スプレッドシート)

## 環境・使用技術
### 開発環境
- OS:Linux(CentOS)
- DB:SQLite
- IDE:Cloud9

### フロントエンド
- Bootstrap 4.5
- JavaScript, jQuery, Ajax

### バックエンド
- Ruby 2.6.3
- Rails 5.2.5

### 本番環境
- AWS(EC2, RDS for MySQL, S3, Route53, ACM, ALB)
- MySQL 5.7.22
- Nginx, Puma

### テスト
- RSpec
- GitHubActions(CI/CD)

## 使用素材
illustAC https://www.ac-illust.com/