class AddTemplateToBigosAppPage < ActiveRecord::Migration
  def change
    add_column :bigos_app_pages, :template, :string
  end
end
