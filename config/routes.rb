Rails.application.routes.draw do
  get 'posts' => "posts#index"
  get 'home/about' => "home#about"
  get 'home/top' => "home#top"
  get 'posts/new' => "posts#new"
  get 'posts/:id' => "posts#show"
  post 'posts/create' => "posts#create"
  get 'posts' => "posts#index"
end
