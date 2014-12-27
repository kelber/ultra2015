Rails.application.routes.draw do

  root 'welcome#index'
  get 'sobre', to: 'welcome#sobre', as: :sobre
  # get 'welcome/lojas'
  get 'welcome/franquias'
  get 'welcome/ultrabook'
  get 'welcome/contato'

  resources :estados do
  	resources :cidades, except: [:index, :update] , dependent: :destroy do
      resources :lojas
    end
  end

  resources :vehicle_brands do
    resources :vehicle_names , dependent: :destroy
  end

end
