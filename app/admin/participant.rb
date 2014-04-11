ActiveAdmin.register Participant do
  permit_params :first_name, :last_name, :email

  index do
    column :first_name
    column :last_name
    column :email

    default_actions
  end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
    end
  end
end
