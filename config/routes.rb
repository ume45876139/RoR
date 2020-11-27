Rails.application.routes.draw do
  resources :articles # all route ,only: [:show, :index, :new, :create, :edit, :update, :destroy] # resourceが先
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
end
