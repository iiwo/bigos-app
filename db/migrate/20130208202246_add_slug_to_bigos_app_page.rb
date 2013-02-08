class AddSlugToBigosAppPage < ActiveRecord::Migration
  def change
    add_column :bigos_app_pages, :slug, :string
    add_index :pages, :slug, unique: true
  end
end
