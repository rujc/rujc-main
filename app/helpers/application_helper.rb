module ApplicationHelper
  def flash_messages
    messages = ''

    flash.each do |type, content|
      if %w(notice alert).include? type
        messages << content_tag(:div, content, class: 'alert')
      end
    end

    raw content_tag :div,
      raw(messages),
      id: 'flash_messages',
      class: messages.blank? ? 'hidden' : ''
  end
end
