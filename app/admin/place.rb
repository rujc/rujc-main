ActiveAdmin.register Place do
  permit_params :title, :google_maps_link, :main_image

  index do
    column :photo do |place|
      image_tag place.main_image
    end

    column :name do |place|
      place.title
    end

    column :title
    column :google_maps_link do |place|
      link_to place.google_maps_link, place.google_maps_link
    end

    default_actions
  end

  show do
    attributes_table do
      row :name do
        place.title
      end
      row :google_maps_link do
        link_to place.google_maps_link, place.google_maps_link
      end
      row :photo do
        image_tag place.main_image
      end
    end
  end
end
