Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index'

  resources :pictures 
  # Ignore the comments below for now
  # They are just documentation
end
