Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get 'estudiantes/index', to: 'estudiantes#index'
  get 'estudiantes/new', to: 'estudiantes#new'
  post 'estudiantes/', to: 'estudiantes#create'
  get 'estudiantes/:id', to: 'estudiantes#show', as: 'estudiante'
  get 'estudiantes/:id/edit', to: 'estudiantes#edit', as: 'edit_estudiantes'
  patch 'estudiantes/:id', to: 'estudiantes#update'
  put 'estudiantes/:id', to: 'estudiantes#update'
  #delete 'estudiantes/:id', to: 'estudiantes#destroy'
  delete 'estudiantes/:id(.:format)', :to => 'estudiantes#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
