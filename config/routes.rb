Rails.application.routes.draw do
  resources :people
  root to: "logins#login"
  post '/', to: 'logins#login'
  
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
