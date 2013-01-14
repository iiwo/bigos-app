# This migration comes from bigos_app (originally 20130114213815)
class CreateBigosAppTextBlocks < ActiveRecord::Migration
  def change
    create_table :bigos_app_text_blocks do |t|
      t.integer :page_element_id
      t.string :type
      t.string :title
      t.text :content
      t.integer :position

      t.timestamps
    end
  end
end
