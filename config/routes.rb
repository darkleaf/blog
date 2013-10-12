Blog::Application.routes.draw do
  scope module: :web do
    root 'welcome#index'
  end

  namespace :admin do
    root 'posts#index'
    resources :posts
  end
end
