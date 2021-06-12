require "refile/s3"

if Rails.env.production? # 本番環境の場合はS3へアップロード
  aws = {
    access_key_id: ENV['S3_ACCESS_KEY_ID'], 
    secret_access_key: ENV['S3_SECRET_ACCESS_KEY'],
    region: 'ap-northeast-1', # リージョン
    bucket: ENV['S3_BUCKET'], # バケット名
  }
  Refile.cache = Refile::S3.new(prefix: 'cache', **aws)
  Refile.store = Refile::S3.new(prefix: 'store', **aws)
end
