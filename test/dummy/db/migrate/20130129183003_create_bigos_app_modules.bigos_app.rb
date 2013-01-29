# This migration comes from bigos_app (originally 20130129182903)
class CreateBigosAppModules < ActiveRecord::Migration
  def change
    create_table :bigos_app_instaled_modules do |t|
      t.string :name
      t.string :page_element

      t.timestamps
    end
  end
end
