module ApplicationHelper
  def markdown(content)
    renderer = Renderer
    options = {
        autolink: true,
        fenced_code_blocks: true
    }
    markdown = Redcarpet::Markdown.new renderer, options
    find_and_preserve markdown.render(content)
  end
end
