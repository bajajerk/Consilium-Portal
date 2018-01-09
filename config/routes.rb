Rails.application.routes.draw do
  # get 'database/index'

  # devise_for :admins
  # resources :casechallenges
  # resources :shatranjs
  # resources :kaizens
  # resources :tradeverses
  # resources :bcases
  # resources :mockstocks
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
   root to: "home#index"
   get 'home/index'
   get 'home/profile'
   get 'home/errorpage'
   post 'home/updateprofile'
   post 'home/refer'


   get 'mockstocks/index'
   get 'mockstocks/createteam'
   post 'mockstocks/saveteam'


   get 'bcases/createteam'
   get 'bcases/index'
   post 'bcases/saveteam'


   get 'tradeverses/createteam'
   get 'tradeverses/index'
   post 'tradeverses/saveteam'


   get 'kaizens/createteam'
   get 'kaizens/index'
   post 'kaizens/saveteam'

   get 'shatranjs/createteam'
   get 'shatranjs/index'
   post 'shatranjs/saveteam'


   get 'casechallenges/createteam'
   get 'casechallenges/index'
   post 'casechallenges/saveteam'


    get 'database/index' 
    devise_scope :admin do
    get "/sign_in" => "admins/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "admins/registrations#new", as: "new_admin_registration" # custom path to sign_up/registration
    end

    devise_for :admins, :skip => [:registrations] 
    as :admin do
    get 'admins/edit' => 'admins/registrations#edit', :as => 'edit_admin_registration'
    put 'admins' => 'admins/registrations#update', :as => 'admin_registration'
    end






end
