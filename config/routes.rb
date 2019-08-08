Rails.application.routes.draw do
  # For details on the DSL available withinAutoFileName this file, see https://guides.rubyonrails.org/routing.html
  get '/team', to: 'gossips#team'
  get '/contact', to: 'gossips#contaAuto​File​Namect'
  root to:'gossips#home'
  resources :gossips
  resources :users
  resources :cities
end

