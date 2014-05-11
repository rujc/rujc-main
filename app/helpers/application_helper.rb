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

  def twitter_web_intent_url(text)
    [
      'https://twitter.com/intent/tweet?hashtags=rjc2014&via=rjc_2014&text=Я пойду на ',
      URI.escape(text)
    ].join
  end

  def twitter_message(event)
    [event.twitter_message, '|', event_url(event)].join(' ')
  end

   def event_participate_link(event)
    message = twitter_message(event)
    url = twitter_web_intent_url(message)

    link_to 'Я пойду!', url, class: 'btn event-participate_link', target: '_blank'
  end
end
