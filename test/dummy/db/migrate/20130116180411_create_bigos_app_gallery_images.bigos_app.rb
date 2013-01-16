# This migration comes from bigos_app (originally 20130116180346)
class CreateBigosAppGalleryImages < ActiveRecord::Migration
  def change
    create_table :bigos_app_gallery_images do |t|
      t.integer :gallery_id
      t.string :title
      t.string :href
      t.string :image
      t.integer :position
      t.string :type

      t.timestamps
    end
  end
end
