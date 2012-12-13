class CreateBigosAppPageModules < ActiveRecord::Migration
  def change
    create_table :bigos_app_page_modules do |t|
      t.integer :module_id
      t.string :name
      t.integer :page_element_id

      t.timestamps
    end
  end
end
