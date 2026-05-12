Rails.application.routes.draw do
  get "kinds/index"
  get "kinds/show"
  get "kinds/edit"
  get "kinds/update"
  get "admins/index"
  get "admins/new"
  get "admins/create"
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  post '/contact', to: 'static_pages#contact', as: 'contact'
  get '/about', to: 'static_pages#about', as: 'about'
  resources :buildings do
    delete :bulk_destroy, on: :collection
    post :migrate_images_to_s3, on: :member
    patch :reorder_attachments, on: :member
    delete "attachments/:attachment_id", to: "buildings#destroy_attachment", on: :member, as: :attachment
  end

  resources :kinds do
    delete :bulk_destroy, on: :collection
  end

  resources :collaborators, except: [:show] do
    delete :bulk_destroy, on: :collection
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :admins, only: [:index, :new, :create]
end
