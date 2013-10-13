class Web::WelcomeController < Web::ApplicationController
  def index
    @posts = Post.all
  end
end
