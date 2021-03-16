Rails.application.routes.draw do
  root 'vinos#index'
  post 'vinos/create', to:'vinos#create', as: 'c_vino'

  patch 'vinos/update', to: 'vinos#update', as: 'porcen'

  patch 'vinos/index', to: 'vinos#index', as:'porcentaje'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
