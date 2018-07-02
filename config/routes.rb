Rails.application.routes.draw do

  root 'static_pages#home'
  post '/contact', to: 'static_pages#contact', as: 'contact'
  resources :buildings, only: [:index, :show]

end
