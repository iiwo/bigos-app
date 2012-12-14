class AddRoleToAdminUser < ActiveRecord::Migration
  def change
    add_column :bigos_app_admin_users, :role, :string
  end
end
