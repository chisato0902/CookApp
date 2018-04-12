Rails.application.routes.draw do
  get 'users/index'
  get 'posts' => "posts#index"
  get 'posts/new' => "posts#new"
  get 'posts/:id' => "posts#show"
  post 'posts/create' => "posts#create"
  get 'posts/:id/edit' => "posts#edit"
  post 'posts/:id/update' => "posts#update"
  post 'posts/:id/destroy' => "posts#destroy"

  get 'users' => "users#index"
  get 'users/:id' => "users#show"
  get 'signup' => "users#new"

  get 'home/about' => "home#about"
  get 'home/top' => "home#top"
end
