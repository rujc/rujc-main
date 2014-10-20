class Article < ActiveRecord::Base
  validates :title, :body, presence: true

  def title
    binding.pry
    locale = I18n.locale == :ru ? "" : "_en"
    public_send("title#{I18n.locale}")
  end

  def body
    locale = I18n.locale == :ru ? "" : "_en"
    public_send("body#{I18n.locale}")
  end
end
