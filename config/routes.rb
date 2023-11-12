Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }

  resources :users do
    get 'profile', on: :collection, as: 'profile'
  end

  root to: 'main#home'
  resources :restaurants do
    resources :dishes
    resources :orders do
      resources :items
    end
  end
end
