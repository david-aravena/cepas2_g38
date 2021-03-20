Rails.application.routes.draw do
  
  get 'cepas/update'
  get 'panels/index'
  patch 'enologo_vinos/update', to: 'enologo_vinos#update', as: 'ev_u'
  
  root 'sessions#new'
  post 'sessions/create', to: 'sessions#create', as: 's_c'

  patch 'cepas/update', to: 'cepas#update', as: 'c_u'




  post 'users/create', to: 'users#create', as: 'u_c'
  post 'vinos/create', to:'vinos#create', as: 'c_vino'
  patch 'vinos/update', to: 'vinos#update', as: 'porcen'
  patch 'vinos/index', to: 'vinos#index', as:'porcentaje'
  get 'vinos/index', to: 'vinos#index', as:'vinos'

  delete 'sessions/destroy', to: 'sessions#destroy', as: 's_d'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
