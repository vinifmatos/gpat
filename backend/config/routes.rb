Rails.application.routes.draw do
  defaults format: :json do
    resources :fornecedores
    resources :enderecos
    resources :responsaveis
    resources :locais
    resources :grupos
    resources :patrimonios
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
    # Can be used by load balancers and uptime monitors to verify that the app is live.
    get "up" => "rails/health#show", as: :rails_health_check

    # Defines the root path route ("/")
    # root "posts#index"

    get 'tipos-fornecedor', to: 'fornecedores#tipos'
  end
end
