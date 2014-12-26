Rails.application.routes.draw do

  root 'welcome#index'
  get 'sobre', to: 'welcome#sobre', as: :sobre
  # get 'welcome/lojas'
  get 'welcome/franquias'
  get 'welcome/ultrabook'
  get 'welcome/contato'

  resources :estados



end
