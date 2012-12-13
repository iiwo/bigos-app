# This migration comes from bigos_app (originally 20121213205804)
class CreateBigosAppPages < ActiveRecord::Migration
  def change
    create_table :bigos_app_pages do |t|
      t.string :name
      t.string :type
      t.string :label
      t.integer :position
      t.integer :page_template_id
      t.text :elements
      t.boolean :is_visible

      t.timestamps
    end
  end
end
