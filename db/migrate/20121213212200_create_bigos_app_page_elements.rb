class CreateBigosAppPageElements < ActiveRecord::Migration
  def change
    create_table :bigos_app_page_elements do |t|
      t.string :name
      t.string :type
      t.boolean :is_admin_visible

      t.timestamps
    end
  end
end
