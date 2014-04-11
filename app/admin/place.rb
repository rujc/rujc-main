ActiveAdmin.register Place do
  permit_params :title, :google_maps_link, :main_image
end
