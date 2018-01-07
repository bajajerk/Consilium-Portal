Rails.application.routes.draw do
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





end
