Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pictures#index'

  get 'pictures' => 'pictures#index'

  post 'pictures' => 'pictures#create' # this is a new line of code
  get 'pictures/new' => 'pictures#new' # this is also a new line of code

  get 'pictures/:id/edit' => "pictures#edit", as: 'edit_picture'
  patch 'pictures/:id' => "pictures#update"

  get 'pictures/:id' => 'pictures#show', as: 'picture'

  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"
  # Ignore the comments below for now
  # They are just documentation
end
