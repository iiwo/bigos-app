# This migration comes from bigos_app (originally 20130116175819)
class RemovePositionFromTextBlock < ActiveRecord::Migration
  def up
    remove_column :bigos_app_text_blocks, :position
  end

  def down
    add_column :bigos_app_text_blocks, :position, :integer
  end
end
