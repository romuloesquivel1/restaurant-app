Rails.application.routes.draw do
  devise_for :users
  root to: 'main#home'
  resources :restaurants do
    resources :dishes
    resources :orders do
      resources :items
    end
  end
end
