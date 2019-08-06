Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/team', to: 'gossips#team'
  get '/contact', to: 'gossips#contact'
  root to:'gossips#home'
 get '/gossips/show/:id', to: 'gossips#show'
  resources :gossips
end
