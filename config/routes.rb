Calendar::Application.routes.draw do
   root 'pages#home'
   resources :users
   get '/calendar' , to: 'pages#calendar'
end
