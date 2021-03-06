Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  resources :user_friends, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'my_friends', to: 'users#my_friends'
  get 'search_stock', to: 'stocks#search'
  get 'search_friends', to: 'users#search'
end
