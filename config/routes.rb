Rails.application.routes.draw do
 
 root to:'front#index'
  get 'front/sign_up'
  get 'front/log_in'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
