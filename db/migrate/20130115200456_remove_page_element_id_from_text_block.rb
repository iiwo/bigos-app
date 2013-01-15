class RemovePageElementIdFromTextBlock < ActiveRecord::Migration
  def up
    remove_column :bigos_app_text_blocks, :page_element_id
  end

  def down
    add_column :bigos_app_text_blocks, :page_element_id, :integer
  end
end
