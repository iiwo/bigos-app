# This migration comes from bigos_app (originally 20130115184113)
class AddPageIdToPageElement < ActiveRecord::Migration
  def change
    add_column :bigos_app_page_elements, :page_id, :integer
  end
end
