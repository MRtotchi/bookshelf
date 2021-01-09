Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :books
  get 'books/status'
  #get 'books/search_from_status'
  #get 'books/use_api'
  
 resources :search_status
 resources :rental_books
 resource :isbn
 resource :state_to_ordered
 resource :takeout
 resources :searches
 resources :now_order
 
 root 'books#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
