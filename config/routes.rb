Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/residential' =>'home#residential'
  
  root 'home#index'
end
