require "bigos-app/engine"
require "devise"
require "simple_roles"
require "sass-rails"
require "coffee-rails"
require "compass-rails"
require "zurb-foundation"
require "simple_form"
require "cancan"
require "tinymce-rails"
require "cocoon"
require "yettings"
require "carrierwave"
require "fog"

module BigosApp

  mattr_accessor :s_3_access_key_id
  @@s_3_access_key_id = nil

  mattr_accessor :s_3_secret_access_key
  @@s_3_secret_access_key = nil

  mattr_accessor :s_3_bucket_name
  @@s_3_bucket_name_dev = nil

end
