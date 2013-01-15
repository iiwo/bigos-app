class AddPageIdToPageElement < ActiveRecord::Migration
  def change
    add_column :bigos_app_page_elements, :page_id, :integer
  end
end
