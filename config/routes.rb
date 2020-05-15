Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get 'mascotas/index', to: 'mascotas#index'
  get 'mascotas/new', to: 'mascotas#new'
  post 'mascotas/', to: 'mascotas#create'
  get 'mascotas/:id', to: 'mascotas#show', as: 'mascota'
  get 'mascotas/:id/edit', to: 'mascotas#edit', as: 'mascotas_edit'
  patch 'mascotas/:id', to: 'mascotas#update'
  put 'mascotas/:id', to: 'mascotas#update'

  delete 'mascotas/:id(.:format)', :to => 'mascotas#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
