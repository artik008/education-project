Rails.application.routes.draw do
  root 'todos#index'
  post '/', to: 'todos#create'

  resources :projects, only: [:destroy]
  resources :todos, only: [:show, :create, :update, :destroy]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
