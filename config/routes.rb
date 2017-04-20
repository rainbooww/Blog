Rails.application.routes.draw do


  devise_for :users
	resources :blog_posts
	resources :comments, only: [:edit, :create, :update, :destroy]
	root 'blog_posts#index'

  get 'your_posts' => 'blog_posts#your_posts'

  get 'user_profile' => 'blog_posts#user_profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
