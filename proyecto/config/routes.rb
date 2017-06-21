Rails.application.routes.draw do
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  resources :suggestions
  resources :documents
  root to: 'documents#index'
  devise_for :people #, path: 'auth'
  #devise_scope :person do
  #  get 'auth', to: 'devise/registrations#new'

  #end
  authenticate :person do
  resources :assignments
  resources :managements
  resources :categories
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
end
