Rails.application.routes.draw do

  
  resources :interventions
  # resources :comments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/residential' =>'home#residential'
  get '/commercial' =>'home#commercial'
  get '/quote' =>'quote#quote'
  get '/index-RocketElevators.html' =>'home#index'
  get '/index-rocketElevators-residential.html' => 'home#residential'
  get '/index-rocketElevators-commercial.html' => 'home#commercial'
  get '/index-Quote.html' => 'quote#quote'
  post '/new_quote' =>'quote#new_quote'
  #post '/new_intervention' => 'intervention#new_intervention'
  post '/new_lead' =>'lead#new_lead'
  get '/chart' =>'charts#chart'
 
 #interventions

  get '/interventions' =>'interventions#interventions/new'
  get '/update_buildings' => 'interventions#update_buildings'
  get '/update_batteries' => 'interventions#update_batteries'
  get '/update_columns' => 'interventions#update_columns'
  get '/update_elevators' => 'interventions#update_elevators' 

  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'

end





