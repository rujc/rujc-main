ActiveAdmin.register Event do
  permit_params :title, :description, :starts_at, :ends_at,
    :conditions, :place_id, :performer_id, :starts_at_date,
    :starts_at_time_hour, :starts_at_time_minute, :ends_at_date,
    :ends_at_time_hour, :ends_at_time_minute

  index do
    column :title do |event|
      link_to event.title, admin_event_path(event)
    end

    column 'Place' do |event|
      event.place.try(:title)
    end

    column 'Performer' do |event|
      event.performer.try(:full_name)
    end

    column :starts_at
    column :ends_at
    column :conditions

    default_actions
  end

  show title: :title do
    attributes_table do
      row :title
      row :date do
        "#{event.starts_at} - #{event.ends_at}"
      end
      row :conditions
      row :place
      row :performer
      div do
        simple_format event.description
      end
      row :image do
        if event.performer
          image_tag event.performer.try(:main_image)
        else
          image_tag event.place.try(:main_image)
        end
      end
    end
  end

  form do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :place
      f.input :performer
      f.input :conditions
      f.input :starts_at, as: :just_datetime_picker
      f.input :ends_at, as: :just_datetime_picker
    end

    f.inputs 'Content', :description

    f.actions
  end
end
