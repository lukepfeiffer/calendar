Calendar::Application.routes.draw do
   root 'pages#home'
   resources :users
   resources :calendar_days
   get '/calendar', to: 'pages#calendar'
   get '/calendar_day', to: 'calendar_days#description'
   post 'sessions', to: 'sessions#create'
end
