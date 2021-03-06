Rails.application.routes.draw do
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
  post 'users/create' => "users#create"
  get 'users/:id/edit' => "users#edit"
  post 'users/:id/update' => "users#update"

  get 'login' => "users#login_form"
  post 'login' => "users#login"

  get 'logout' => "users#login_form"
  post 'logout' => "users#logout"

  get 'home/about' => "home#about"
  get 'home/top' => "home#top"
end
