# This migration comes from bigos_app (originally 20121213213744)
class AddParentPageToPage < ActiveRecord::Migration
  def change
    add_column :bigos_app_pages, :parent_page_id, :integer
  end
end
