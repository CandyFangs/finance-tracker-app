Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  root 'welcome#index'
  get '/my_portfolio' => 'users#my_portfolio', as: 'my_portfolio'
  get '/search_stocks' => 'stocks#search', as: 'search_stocks'
  get '/my_friends' => 'users#my_friends', as: 'my_friends'  
  resources :user_stocks, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
