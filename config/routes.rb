Rails.application.routes.draw do
  resources :abouts
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  root to: "posts#index"

  resources :posts
end
