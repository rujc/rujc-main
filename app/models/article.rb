class Article < ActiveRecord::Base
  validates :title, :body, presence: true

  def title
    locale = I18n.locale == :ru ? "" : "en"
    public_send("title_#{I18n.locale}")
  end

  def body
    locale = I18n.locale == :ru ? "" : "en"
    public_send("body_#{I18n.locale}")
  end
end
