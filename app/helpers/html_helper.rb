module HtmlHelper
  def format_html(html)
    Loofah::HTML5::DocumentFragment.parse(html).scrub!(AutoLinkScrubber.new).to_html.html_safe
  end

  def card_html_title(card)
    return card.title if card.title.blank?

    ERB::Util.html_escape(card.title).gsub(/`([^`]+)`/, '<code>\1</code>').html_safe
  end

  def card_html_deadline(card)
    return card.deadline if card.deadline.blank?

    ERB::Util.html_escape(card.deadline).gsub(/`([^`]+)`/, '<code>\1</code>').html_safe
  end

  def card_html_client(card)
    return card.client if card.client.blank?

    ERB::Util.html_escape(card.client).gsub(/`([^`]+)`/, '<code>\1</code>').html_safe
  end

  def card_client_list()
    return Card.distinct.pluck(:client).reject(&:blank?)
  end
end
