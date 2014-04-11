ActiveAdmin.register Performer do
  permit_params :first_name, :last_name, :title,
    :facebook_link, :instagram_link, :vk_link,
    :twitter_link, :main_image

  index do
    column :photo do |performer|
      image_tag performer.main_image
    end

    column :name do |performer|
      performer.full_name
    end

    column :title
    column :facebook_link do |performer|
      link_to performer.facebook_link, performer.facebook_link
    end

    default_actions
  end

  show do
    attributes_table do
      row :name do
        performer.full_name
      end
      row :title
      row :facebook_link
      row :photo do
        image_tag performer.main_image
      end
    end
  end
end
