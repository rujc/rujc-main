class Article < ActiveRecord::Base
  validates :title, :body, presence: true

  def title
    if I18n.locale == :ru
      super
    else
     public_send("title_#{I18n.locale}")
    end
  end

  def body
    if I18n.locale == :ru
      super
    else
     public_send("body_#{I18n.locale}")
    end
  end
end
