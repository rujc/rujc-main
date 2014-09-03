ActiveAdmin.register Article do
  permit_params :title, :body

  index do
    column :title do |article|
      link_to article.title, admin_article_path(article)
    end

    column :created_at

    default_actions
  end

  show title: :title do
    attributes_table do
      row :title
      row :body
    end
  end

  form do |f|
    f.inputs 'Content' do
      f.input :title
      f.input :body, as: :html_editor
    end

    f.actions
  end
end
