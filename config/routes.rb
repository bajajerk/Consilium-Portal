Rails.application.routes.draw do
  # resources :tradeverses
  # resources :bcases
  # resources :mockstocks
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
   root to: "home#index"
   get 'home/index'
   get 'home/profile'
   get 'home/errorpage'
   post 'home/updateprofile'


   get 'mockstocks/index'
   get 'mockstocks/createteam'
   post 'mockstocks/saveteam'


   get 'bcases/createteam'
   get 'bcases/index'
   post 'bcases/saveteam'


   get 'tradeverses/createteam'
   get 'tradeverses/index'
   post 'tradeverses/saveteam'





end
