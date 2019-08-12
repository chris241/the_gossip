Rails.application.routes.draw do

  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/delete'
  get 'comments/index'
  get 'comments/show'
  # For details on the DSL available withinAutoFileName this file, see https://guides.rubyonrails.org/routing.html
  get '/team', to: 'gossips#team'
  get '/contact', to: 'gossips#contact'
  root to:'gossips#home'
  resources :gossips
  resources :users
  resources :cities
  resources :comments
  resources :sessions

end

