Rails.application.routes.draw do
  devise_for :people, path: 'auth'
  devise_scope :person do
    get 'auth', to: 'devise/registrations#new'
  end
  authenticate :person do
  resources :assignments
  resources :managements
  resources :documents
  resources :categories
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'documents#index'
end
end
