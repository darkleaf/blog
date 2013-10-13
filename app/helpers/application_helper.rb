module ApplicationHelper
  def markdown(content)
    renderer = Redcarpet::Render::HTML
    markdown = Redcarpet::Markdown.new renderer, autolink: true, space_after_headers:  true
    markdown.render(content).html_safe
  end
end
