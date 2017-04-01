Rails.application.routes.draw do
  root 'todos#index'
  post '/', to: 'todos#create'
  get 'projects/*project_id', to: 'projects#new'

  resources :projects, only: [:show]
  resources :todos, only: [:show, :create, :update]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
