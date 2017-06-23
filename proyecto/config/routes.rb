Rails.application.routes.draw do
<<<<<<< HEAD
  resources :comments
  resources :suggestion_comments
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end

=======

  resources :suggestions
>>>>>>> 0f94a5cfacbcee5706c6c9ab875deb4c756dfa81
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
  resources :suggestions





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
end
