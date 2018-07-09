Rails.application.routes.draw do

  root 'static_pages#home'
  post '/contact', to: 'static_pages#contact', as: 'contact'
  get '/about', to: 'static_pages#about', as: 'about'
  resources :buildings, only: [:index, :show]

end
