Rails.application.routes.draw do
  root "home#index"

  get '*path',to: 'home#not_found'
end
