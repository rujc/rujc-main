ActiveAdmin.register Event do
  permit_params :title, :description, :starts_at, :ends_at, :conditions, :place_id
end
