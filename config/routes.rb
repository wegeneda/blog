Rails.application.routes.draw do
  resources :abouts
  resources :users do
  	member do
  		post :confirm_user
  	end
  end
  devise_for :admins
  resources :admins, :only => [:show, :edit, :update ]
  mount Ckeditor::Engine => '/ckeditor'
  root to: "posts#index"
  resources :posts
end
