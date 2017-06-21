Rails.application.routes.draw do
  resources :suggestions
  resources :documents
  root to: 'documents#index'
  devise_for :people, path: 'auth'
  devise_scope :person do
    get 'auth', to: 'devise/registrations#new'

  end
  authenticate :person do
  resources :assignments
  resources :managements
  resources :categories
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
end
