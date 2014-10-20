class AddEnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :title_en, :string, default: '', null: false
    add_column :articles, :body_en, :text, default: '', null: false
  end
end
