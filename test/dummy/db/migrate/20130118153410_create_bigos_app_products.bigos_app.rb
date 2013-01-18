# This migration comes from bigos_app (originally 20130118153051)
class CreateBigosAppProducts < ActiveRecord::Migration
  def change
    create_table :bigos_app_products do |t|
      t.integer :product_category_id
      t.string :name
      t.text :description
      t.float :price
      t.string :type
      t.integer :position

      t.timestamps
    end
  end
end
