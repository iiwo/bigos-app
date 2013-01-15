# This migration comes from bigos_app (originally 20130115195846)
class AddTextBlockElementIdToTextBlock < ActiveRecord::Migration
  def change
    add_column :bigos_app_text_blocks, :text_block_element_id, :integer
  end
end
