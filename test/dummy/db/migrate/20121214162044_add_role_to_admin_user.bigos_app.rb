# This migration comes from bigos_app (originally 20121214161825)
class AddRoleToAdminUser < ActiveRecord::Migration
  def change
    add_column :bigos_app_admin_users, :role, :string
  end
end
