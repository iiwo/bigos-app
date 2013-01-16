class AddPositionToBigosAppPageElement < ActiveRecord::Migration
  def change
    add_column :bigos_app_page_elements, :position, :integer
  end
end
