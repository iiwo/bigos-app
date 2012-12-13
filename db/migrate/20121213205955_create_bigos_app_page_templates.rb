class CreateBigosAppPageTemplates < ActiveRecord::Migration
  def change
    create_table :bigos_app_page_templates do |t|
      t.string :name
      t.string :type
      t.text :elements
      t.integer :position
      t.boolean :is_visible

      t.timestamps
    end
  end
end
