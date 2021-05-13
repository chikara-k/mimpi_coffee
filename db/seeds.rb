# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin.create(
#   email: 'admin@admin',
#   password: 'adminadmin'
# )

# Genre.create(
#   [
#     {
#       name: "ブレンドコーヒー"
#     },
#     {
#       name: "アジアのコーヒー"
#     },
#     {
#       name: "アフリカのコーヒー"
#     },
#     {
#       name: "中南米のコーヒー"
#     },
#     {
#       name: "その他"
#     },
#   ]
# )


# Customer.create!(
#   [
#     {
#       email: 'test@test',
#       password: 'aaaaaa',
#       last_name: "難波",
#       first_name: "太郎",
#       last_name_kana: "なんば",
#       first_name_kana: "たろう",
#       postal_code: "5240076",
#       address: "大阪府大阪市中央区難波4丁目7-14難波フロントビル４階",
#       telephone_number: "0678785677"
#     },
#     {
#       email: 'test2@test',
#       password: 'aaaaaa',
#       last_name: "新宿",
#       first_name: "健太",
#       last_name_kana: "やまだ",
#       first_name_kana: "けんた",
#       postal_code: "1600022",
#       address: "東京都新宿区新宿２丁目５−１０ 成信ビル 4階",
#       telephone_number: "03-6869-4700"
#     },
#     {
#       email: 'test3@test',
#       password: 'aaaaaa',
#       last_name: "渋谷",
#       first_name: "校",
#       last_name_kana: "しぶや",
#       first_name_kana: "こう",
#       postal_code: "150-0041",
#       address: "東京都渋谷区神南１丁目１９−１１ パークウェースクエスクエア24階",
#       telephone_number: "0368694700"
#     },
#     {
#       email: 'test4@test',
#       password: 'aaaaaa',
#       last_name: "宮崎",
#       first_name: "花子",
#       last_name_kana: "みやざき",
#       first_name_kana: "はなこ",
#       postal_code: "880-0934",
#       address: "宮崎県宮崎市大坪東4丁目２２−２",
#       telephone_number: "045-330-5211"
#     }
#   ]
# )

# Item.create!(
#   [
#     {
#     genre_id: "1",
#     name: "テストブレンド",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 5,
#     taste_sour: 5,
#     taste_aroma: 5,
#     taste_body: 5,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "1",
#     name: "ロイヤルブレンド",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 3,
#     taste_sour: 3,
#     taste_aroma: 3,
#     taste_body: 3,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "1",
#     name: "スペシャルブレンド",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 4,
#     taste_sour: 4,
#     taste_aroma: 4,
#     taste_body: 4,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "1",
#     name: "ヨーロピアンブレンド",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 1,
#     taste_sour: 1,
#     taste_aroma: 1,
#     taste_body: 1,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#   ]
# )

# Item.create!(
#   [
#     {
#     genre_id: "2",
#     name: "アジアのコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 5,
#     taste_sour: 5,
#     taste_aroma: 5,
#     taste_body: 5,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "2",
#     name: "アジアのコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 3,
#     taste_sour: 3,
#     taste_aroma: 3,
#     taste_body: 3,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "2",
#     name: "アジアのコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 4,
#     taste_sour: 4,
#     taste_aroma: 4,
#     taste_body: 4,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "2",
#     name: "アジアのコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 1,
#     taste_sour: 1,
#     taste_aroma: 1,
#     taste_body: 1,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#   ]
# )
# Item.create!(
#   [
#     {
#     genre_id: "3",
#     name: "アフリカのコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 5,
#     taste_sour: 5,
#     taste_aroma: 5,
#     taste_body: 5,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "3",
#     name: "アフリカのコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 3,
#     taste_sour: 3,
#     taste_aroma: 3,
#     taste_body: 3,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "3",
#     name: "アフリカのコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 4,
#     taste_sour: 4,
#     taste_aroma: 4,
#     taste_body: 4,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "3",
#     name: "アフリカのコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 1,
#     taste_sour: 1,
#     taste_aroma: 1,
#     taste_body: 1,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#   ]
# )
# Item.create!(
#   [
#     {
#     genre_id: "4",
#     name: "中南米のコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 5,
#     taste_sour: 5,
#     taste_aroma: 5,
#     taste_body: 5,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "4",
#     name: "中南米のコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 3,
#     taste_sour: 3,
#     taste_aroma: 3,
#     taste_body: 3,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "4",
#     name: "中南米のコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 4,
#     taste_sour: 4,
#     taste_aroma: 4,
#     taste_body: 4,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "4",
#     name: "中南米のコーヒー",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 1,
#     taste_sour: 1,
#     taste_aroma: 1,
#     taste_body: 1,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#   ]
# )
# Item.create!(
#   [
#     {
#     genre_id: "5",
#     name: "その他その他",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 5,
#     taste_sour: 5,
#     taste_aroma: 5,
#     taste_body: 5,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "5",
#     name: "その他その他",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 3,
#     taste_sour: 3,
#     taste_aroma: 3,
#     taste_body: 3,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "5",
#     name: "その他その他",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 4,
#     taste_sour: 4,
#     taste_aroma: 4,
#     taste_body: 4,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#     {
#     genre_id: "5",
#     name: "その他その他",
#     image: File.open('./app/assets/images/img/sample.png'),
#     taste_bitter: 1,
#     taste_sour: 1,
#     taste_aroma: 1,
#     taste_body: 1,
#     roasting_level: "浅煎り",
#     introduction: "ジャンルはブレンドコーヒーですジャンルはブレンドコーヒーですジャンルはブレンドコーヒーです",
#     price: 400,
#     is_sales: true,
#     },
#   ]
# )