class AddIsBackgroundToBigosAppGallery < ActiveRecord::Migration
  def change
    add_column :bigos_app_galleries, :is_background, :boolean
  end
end
