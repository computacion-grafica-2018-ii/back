Rails.application.routes.draw do
  resources :stocks
  resources :quotation_products
  resources :quotations
  resources :users
  resources :products

  get    'users/:id/export'  => 'users#export'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
