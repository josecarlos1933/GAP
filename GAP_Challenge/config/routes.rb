Rails.application.routes.draw do
  resources :main_pages
  resources :publisher_houses
  resources :authors
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
