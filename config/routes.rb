Rails.application.routes.draw do
  devise_for :users
  resources :books
  get 'books/status'
  #get 'books/search_from_status'
  #get 'books/use_api'
  
 resources :search_status
 
 resource :isbn

 resource :takeout
 resources :searches
 
 root 'books#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
