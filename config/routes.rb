Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/team', to: 'home#team'
  get '/contact', to: 'home#contact'
  root 'home#home'
end
