require 'rouge/plugins/redcarpet'
class Renderer < Redcarpet::Render::HTML
  include Rouge::Plugins::Redcarpet

  def header(text, level)
    new_level = level + 1
    "<h#{new_level}>#{text}</h#{new_level}>"
  end
end