Rails.application.routes.draw do
  root to: 'main#home'
  resources :dishes
end
