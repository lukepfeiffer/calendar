Calendar::Application.routes.draw do
   root 'pages#home'
   resources :users
   get '/calendar' , to: 'pages#calendar'
   post 'sessions' , to: 'sessions#create'
end
