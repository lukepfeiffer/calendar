Calendar::Application.routes.draw do
   root 'pages#home'
   resources :users
   get '/calendar', to: 'pages#calendar'
   get '/day', to: 'days#new'
   post 'sessions', to: 'sessions#create'
end
