Rails.application.routes.draw do
  get 'welcome/index'

  resources :projects do
    resources :todos, only: [:show, :create, :update]
end  
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
end
