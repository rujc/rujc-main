ActiveAdmin.register Participant do
  permit_params :first_name, :last_name, :email
end
