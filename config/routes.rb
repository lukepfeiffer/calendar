Calendar::Application.routes.draw do
   root 'pages#home'
   resources :users
   resources :calendar_days
   get '/calendar', to: 'pages#calendar'
   post 'sessions', to: 'sessions#create'
end
