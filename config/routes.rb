Rails.application.routes.draw do
  resources :kart_items
  resources :products
  resources :categories
  
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
