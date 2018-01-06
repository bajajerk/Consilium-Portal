Rails.application.routes.draw do
  # resources :mockstocks
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
   root to: "home#index"
   get 'home/index'
   get 'home/profile'


   get 'mockstocks/index'

   get 'mockstocks/createteam'
   post 'mockstocks/saveteam'
   post 'home/updateprofile'




end
