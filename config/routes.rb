Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/residential' =>'home#residential'
  get '/commercial' =>'home#commercial'
  
  root 'home#index'
end
