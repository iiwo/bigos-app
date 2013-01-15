# This migration comes from bigos_app (originally 20130115200456)
class RemovePageElementIdFromTextBlock < ActiveRecord::Migration
  def up
    remove_column :bigos_app_text_blocks, :page_element_id
  end

  def down
    add_column :bigos_app_text_blocks, :page_element_id, :integer
  end
end
