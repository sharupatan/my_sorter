Rails.application.routes.draw do
  root "home#index"

  resources :books

  get '*path',to: 'home#not_found'
end
