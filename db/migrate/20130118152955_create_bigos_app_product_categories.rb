class CreateBigosAppProductCategories < ActiveRecord::Migration
  def change
    create_table :bigos_app_product_categories do |t|
      t.integer :product_element_id
      t.integer :parent_product_catagory_id
      t.string :name
      t.string :type
      t.integer :position

      t.timestamps
    end
  end
end
