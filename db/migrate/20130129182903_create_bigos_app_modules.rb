class CreateBigosAppModules < ActiveRecord::Migration
  def change
    create_table :bigos_app_installed_modules do |t|
      t.string :name
      t.string :page_element

      t.timestamps
    end
  end
end
