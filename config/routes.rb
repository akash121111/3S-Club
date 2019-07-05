Rails.application.routes.draw do
  
  root to:'user#log_in' 

  get 'user/index'
  get 'user/sign_up'
  get 'user/log_in'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
