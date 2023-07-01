Rails.application.routes.draw do
  root to: 'main#home'
  resources :restaurants do
    resources :dishes
    resources :orders
  end
  # resources :dishes
end
