# This migration comes from bigos_app (originally 20130122163200)
class AddTemplateToBigosAppPage < ActiveRecord::Migration
  def change
    add_column :bigos_app_pages, :template, :string
  end
end
