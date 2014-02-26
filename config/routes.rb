Calendar::Application.routes.draw do
   root 'pages#home'
   resources :users
   resources :calendar_days
   get '/calendar', to: 'pages#calendar'
   get '/description', to: 'calendar_day#description'
   post 'sessions', to: 'sessions#create'
end
