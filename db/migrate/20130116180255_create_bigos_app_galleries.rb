class CreateBigosAppGalleries < ActiveRecord::Migration
  def change
    create_table :bigos_app_galleries do |t|
      t.string :title
      t.string :type
      t.integer :gallery_element_id

      t.timestamps
    end
  end
end
