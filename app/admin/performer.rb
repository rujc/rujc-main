ActiveAdmin.register Performer do
  permit_params :first_name, :last_name, :title, :facebook_link, :instagram_link, :vk_link, :twitter_link
end
