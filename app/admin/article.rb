ActiveAdmin.register Article do
  permit_params :title, :body, :title_en, :body_en

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
      row :title_en
      row :body_en
    end
  end

  form do |f|
    f.inputs 'Content' do
      f.input :title
      f.input :body, as: :html_editor, input_html: { style: 'height: 700px' }
      f.input :title_en
      f.input :body_en, as: :html_editor, input_html: { style: 'height: 700px' }
    end

    f.actions
  end
end
