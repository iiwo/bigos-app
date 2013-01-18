CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => 'YOUR ACCESS KEY ID',
      :aws_secret_access_key  => 'YOUR SECRET ACCESS KEY',
  }
  config.fog_directory  = 'BUCKET NAME'
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