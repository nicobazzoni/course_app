Rails.application.routes.draw do
  root 'student#index'
  resources :students
 resources :enrollments, only: [:new, :create, :destroy]
 
 resources :users 
 
 

resources :sessions, only: [:create, :new, :destroy]
get '/signup', to: 'users#new'
get '/logout', to: 'sessions#destroy'
get '/login', to: 'sessions#new'


end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

