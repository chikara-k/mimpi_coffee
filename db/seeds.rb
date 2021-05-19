# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(
  email: 'admin@admin',
  password: 'adminadmin'
)

Genre.create(
  [
    {
      name: "ブレンドコーヒー"
    },
    {
      name: "アジアのコーヒー"
    },
    {
      name: "アフリカのコーヒー"
    },
    {
      name: "中南米のコーヒー"
    },
    {
      name: "その他"
    },
  ]
)


Customer.create!(
  [
    {
      email: 'test@test',
      password: 'aaaaaa',
      last_name: "難波",
      first_name: "太郎",
      last_name_kana: "なんば",
      first_name_kana: "たろう",
      postal_code: "5240076",
      address: "大阪府大阪市中央区難波4丁目7-14難波フロントビル４階",
      telephone_number: "0678785677"
    },
    {
      email: 'test2@test',
      password: 'aaaaaa',
      last_name: "新宿",
      first_name: "健太",
      last_name_kana: "やまだ",
      first_name_kana: "けんた",
      postal_code: "1600022",
      address: "東京都新宿区新宿２丁目５−１０ 成信ビル 4階",
      telephone_number: "03-6869-4700"
    },
    {
      email: 'test3@test',
      password: 'aaaaaa',
      last_name: "渋谷",
      first_name: "校",
      last_name_kana: "しぶや",
      first_name_kana: "こう",
      postal_code: "150-0041",
      address: "東京都渋谷区神南１丁目１９−１１ パークウェースクエスクエア24階",
      telephone_number: "0368694700"
    },
    {
      email: 'test4@test',
      password: 'aaaaaa',
      last_name: "宮崎",
      first_name: "花子",
      last_name_kana: "みやざき",
      first_name_kana: "はなこ",
      postal_code: "880-0934",
      address: "宮崎県宮崎市大坪東4丁目２２−２",
      telephone_number: "045-330-5211"
    }
  ]
)

Item.create!(
  [
    {
    genre_id: "1",
    name: "みんぴブレンド",
    image: File.open('./app/assets/images/img/blended.png'),
    taste_bitter: 2,
    taste_sour: 1,
    taste_aroma: 3,
    taste_body: 3,
    roasting_level: "中煎り",
    introduction: "当店自慢のオリジナルブレンドです！",
    price: 600,
    is_sales: true,
    },
    {
    genre_id: "1",
    name: "ロイヤルブレンド",
    image: File.open('./app/assets/images/img/blended.png'),
    taste_bitter: 3,
    taste_sour: 3,
    taste_aroma: 2,
    taste_body: 1,
    roasting_level: "中煎り",
    introduction: "標準的なブレンドで、どんな場面にもぴったりのブレンドです。",
    price: 400,
    is_sales: true,
    },
    {
    genre_id: "1",
    name: "スペシャルブレンド",
    image: File.open('./app/assets/images/img/blended.png'),
    taste_bitter: 1,
    taste_sour: 4,
    taste_aroma: 3,
    taste_body: 1,
    roasting_level: "浅煎り",
    introduction: "さっぱりした酸味が特徴的なブレンドです。",
    price: 400,
    is_sales: true,
    },
    {
    genre_id: "1",
    name: "ヨーロピアンブレンド",
    image: File.open('./app/assets/images/img/blended.png'),
    taste_bitter: 4,
    taste_sour: 2,
    taste_aroma: 1,
    taste_body: 4,
    roasting_level: "深煎り",
    introduction: "苦味が特徴的で食後などにもぴったりのブレンドです。",
    price: 400,
    is_sales: true,
    },
  ]
)

Item.create!(
  [
    {
    genre_id: "5",
    name: "その他",
    image: File.open('./app/assets/images/img/sample.png'),
    roasting_level: "浅煎り",
    introduction: "その他の商品です。",
    price: 400,
    is_sales: true,
    },
    {
    genre_id: "5",
    name: "その他２",
    image: File.open('./app/assets/images/img/sample.png'),
    taste_bitter: 3,
    taste_sour: 3,
    taste_aroma: 3,
    taste_body: 3,
    roasting_level: "浅煎り",
    introduction: "その他の商品です。",
    price: 400,
    is_sales: true,
    }
  ]
)

Item.create!(
  [
    {
    genre_id: "2",
    name: "マンデリン クイーンスマトラ",
    image: File.open('./app/assets/images/img/asia2.png'),
    taste_bitter: 4,
    taste_sour: 2,
    taste_aroma: 3,
    taste_body: 5,
    roasting_level: "深煎り",
    introduction: "東洋のブルーマウンテン！ゆっくりと時間と珈琲を味わいたい方にぴったりの一杯。アジアの至宝をぜひ一度！",
    price: 700,
    is_sales: true,
    },
    {
    genre_id: "2",
    name: "バリ アラビカ 神山",
    image: File.open('./app/assets/images/img/asia2.png'),
    taste_bitter: 4,
    taste_sour: 2,
    taste_aroma: 4,
    taste_body: 4,
    roasting_level: "深煎り",
    introduction: "神々が宿るとされているバリ島より、深みのあるコクと、スパイシーな苦味を持つ、とっても貴重な一杯。コーヒー好きにはたまらない！",
    price: 700,
    is_sales: true,
    },
    {
    genre_id: "2",
    name: "パプア・ニューギニア シグリ",
    image: File.open('./app/assets/images/img/asia1.png'),
    taste_bitter: 4,
    taste_sour: 3,
    taste_aroma: 3,
    taste_body: 3,
    roasting_level: "深煎り",
    introduction: "豊かな香りとコク、ちょっとした苦味がクセになる！大自然がほほ笑む神秘の楽園から生まれた一杯です。",
    price: 700,
    is_sales: true,
    },
    {
    genre_id: "2",
    name: "インドモンスーン マラバール",
    image: File.open('./app/assets/images/img/asia3.png'),
    taste_bitter: 3,
    taste_aroma: 4,
    taste_body: 2,
    roasting_level: "中煎り",
    introduction: "独特の風味と香り、スキッとした苦味とコク、後に残らないキレ味！初めての方にもおすすめです♪",
    price: 600,
    is_sales: true,
    },
  ]
)
Item.create!(
  [
    {
    genre_id: "3",
    name: "モカ ゲイシャ ゲレザ農園",
    image: File.open('./app/assets/images/img/african1.png'),
    taste_bitter: 2,
    taste_sour: 5,
    taste_aroma: 5,
    taste_body: 2,
    roasting_level: "浅煎り",
    introduction: "コーヒーが生まれた地、エチオピアのとても貴重なゲイシャ種！エチオピアには様々な種類の豆があり、どれも独特の香りと酸味を持っています。このゲイシャ種は近年注目を浴びており、なんと言っても、「香り」が最高のコーヒーです！",
    price: 800,
    is_sales: true,
    },
    {
    genre_id: "3",
    name: "モカ マタリ",
    image: File.open('./app/assets/images/img/african3.png'),
    taste_bitter: 3,
    taste_sour: 4,
    taste_aroma: 5,
    taste_body: 3,
    roasting_level: "中煎り",
    introduction: "珈琲の貴婦人と言われるマタリ。モカ特有の甘みと香り、栽培のクオリティーも上がり、より柔らかく、より高みえと近づいた一杯です！",
    price: 800,
    is_sales: true,
    },
    {
    genre_id: "3",
    name: "タンザニア スノートップ",
    image: File.open('./app/assets/images/img/african2.png'),
    taste_bitter: 5,
    taste_sour: 3,
    taste_aroma: 3,
    taste_body: 5,
    roasting_level: "深煎り",
    introduction: "柔らかく上品な酸味と甘味、スッキリとした後味が特徴的♫　ハイクオリティーな一杯です！",
    price: 600,
    is_sales: true,
    },
    {
    genre_id: "3",
    name: "コンゴ サプール ファルコンKive-3",
    image: File.open('./app/assets/images/img/african4.png'),
    taste_bitter: 4,
    taste_sour: 4,
    taste_aroma: 3,
    taste_body: 4,
    roasting_level: "深煎り",
    introduction: "世界のスペシャリティロースターから、『アフリカの秘宝』として近年脚光を浴びているKive-3。コク・苦味・酸味のバランスは完璧！",
    price: 700,
    is_sales: true,
    },
  ]
)
Item.create!(
  [
    {
    genre_id: "4",
    name: "ブラジル サントスNo.2",
    image: File.open('./app/assets/images/img/latinamerica1.png'),
    taste_bitter: 2,
    taste_sour: 3,
    taste_aroma: 2,
    taste_body: 1,
    roasting_level: "中煎り",
    introduction: "爽やかな酸味、柔らかなコクの珈琲！",
    price: 400,
    is_sales: true,
    },
    {
    genre_id: "4",
    name: "クリスタルマウンテン",
    image: File.open('./app/assets/images/img/latinamerica2.png'),
    taste_bitter: 1,
    taste_sour: 4,
    taste_aroma: 5,
    taste_body: 1,
    roasting_level: "浅煎り",
    introduction: "「カリブ海の真珠」と言われるとても貴重なコーヒー！上品な酸味と甘み、そしてなんといっても香りが最高なコーヒーです♪",
    price: 1000,
    is_sales: true,
    },
    {
    genre_id: "4",
    name: "コロンビア スプレモ",
    image: File.open('./app/assets/images/img/latinamerica3.png'),
    taste_bitter: 3,
    taste_sour: 2,
    taste_aroma: 3,
    taste_body: 3,
    roasting_level: "中煎り",
    introduction: "マイルドコーヒーの定番♪　なんといっても香りが最高です！",
    price: 400,
    is_sales: true,
    },
    {
    genre_id: "4",
    name: "エルサルバドル シティオ・デ・マリア",
    image: File.open('./app/assets/images/img/latinamerica4.png'),
    taste_bitter: 2,
    taste_sour: 4,
    taste_aroma: 4,
    taste_body: 1,
    roasting_level: "浅煎り",
    introduction: "ほどよい苦味と柔らかさで、飲みやすさが特徴的な一杯です。料理やデザートにもぴったりです♫",
    price: 500,
    is_sales: true,
    },
  ]
)
