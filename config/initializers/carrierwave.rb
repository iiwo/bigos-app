CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => S3Yetting.access_key_id,
      :aws_secret_access_key  => S3Yetting.secret_access_key,
  }
  config.fog_directory  = S3Yetting.uploads_bucket_name
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
  config.storage = :fog
end

if Rails.env.test?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end