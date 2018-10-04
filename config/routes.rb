Rails.application.routes.draw do

  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/residential' =>'home#residential'
  get '/commercial' =>'home#commercial'
  get '/quote' =>'quote#quote'
  post '/quote' =>'quote#quote_post'
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'

end





