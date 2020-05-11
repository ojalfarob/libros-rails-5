Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  get 'estudiantes/index', to: 'estudiantes#index'
  get 'estudiantes/new', to: 'estudiantes#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
