# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def link_to_reference url
    if /^https?:\/\// =~ url
      link_to url, h(url)
    else
      link_to url, "http://#{ url }"
    end
  end
end
