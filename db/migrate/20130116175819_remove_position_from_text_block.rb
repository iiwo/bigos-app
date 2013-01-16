class RemovePositionFromTextBlock < ActiveRecord::Migration
  def up
    remove_column :bigos_app_text_blocks, :position
  end

  def down
    add_column :bigos_app_text_blocks, :position, :integer
  end
end
