Rails.application.routes.draw do
  
	resources:session
	resources:user

  #get 'session/new' , to:'session#new'
  #post 'session/create', to:'session#create'
  #delete 'session/destroy'
  #get 'user/index'
  #get 'user/sign_up', to:'user#sign_up'
  #get 'user/log_in'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
