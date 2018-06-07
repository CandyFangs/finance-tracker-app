Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get '/my_portfolio' => 'users#my_portfolio', as: 'my_portfolio'
  get '/search_stocks' => 'stocks#search', as: 'search_stocks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
