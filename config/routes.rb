Rails.application.routes.draw do
  resources :users do
  
  
  resources :enrollments 
  
  resources :students

  resources :courses 
   
 
 

 
 

 get '/signup' => 'users#new'
 post '/signup' => 'users#create'
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'    
 get '/logout' => 'sessions#destroy'
 delete '/logout' => 'sessions#destroy'

end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

