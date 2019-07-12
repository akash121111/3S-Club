Rails.application.routes.draw do
  get 'sign_up',to: "ownersignups#sign_up"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources:spaces
  resources:users
  
   
  post '/owner_signup' ,to: 'ownersignups#create'
  get '/login',to: 'ownersignups#login'
  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'

end
