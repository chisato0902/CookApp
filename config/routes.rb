Rails.application.routes.draw do
  get 'home/about' => "home#about"
  get 'home/top' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
