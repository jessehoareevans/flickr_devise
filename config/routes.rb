Rails.application.routes.draw do


  root 'homes#index'
  devise_for :users, controllers: {

  sessions: 'users/sessions'

}




end
