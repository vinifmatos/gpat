Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  defaults format: :json do
    resources :fornecedores
    resources :responsaveis
    resources :locais
    resources :grupos
    resources :movimentacoes
    resources :patrimonios
    resources :cidades, only: :index
    get 'configuracao', to: 'configuracoes#show'
    put 'configuracao', to: 'configuracoes#update'
    patch 'configuracao', to: 'configuracoes#update'
  end
end
