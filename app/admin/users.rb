ActiveAdmin.register User do
  filter :email
  index do
    column :email do |user|
      link_to user.email, admin_user_path(user)
    end
  end
end
