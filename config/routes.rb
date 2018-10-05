Rails.application.routes.draw do

  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/residential' =>'home#residential'
  get '/commercial' =>'home#commercial'
  get '/quote' =>'quote#quote'
  post '/new_quote' =>'quote#new_quote'
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'

end





