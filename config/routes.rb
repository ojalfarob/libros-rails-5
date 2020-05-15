Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get 'mascotas/index', to: 'mascotas#index'
  get 'mascotas/new', to: 'mascotas#new'
  post 'mascotas/create', to: 'mascotas#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
