SimpleRoles.configure do
  valid_roles :admin, :superadmin
  strategy :one # Default is :one
end