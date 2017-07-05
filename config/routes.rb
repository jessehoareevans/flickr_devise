Rails.application.routes.draw do
  devise_for :users

    root :to => 'registrations#new'

    get '/new_user_session' => 'devise/sessions#new'
    get '/new_user_password' => 'devise/password#new'
    get '/edit_user_password' => 'devise/passwords#edit'
    get '/cancel_user_registration' => 'devise/registrations#cancel'
    get '/new_user_registration' => 'devise/registrations#new'
    get '/edit_user_registration' => 'devise/registrations#edit'
    get '/signup' => 'users#new'
    get '/signin' => 'sessions#new'
    get '/signout' => 'sessions#destroy'

    post '/user_session' => 'devise/sessions#create'
    post '/registrations' => 'registrations#create'

end
