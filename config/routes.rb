Rails.application.routes.draw do

  resources :suppliers, only: [:index, :create, :new, :edit, :update, :destroy]
  resources :users

  resources :logs

  resources :items

  root 'items#index'

  get '/login', to: 'session#login'

  get '/logout', to: 'session#logout'

  post '/login', to: 'session#create'

  get '/notify', to: 'notify#message'

  get 'logs/:id/checkin' , to: 'logs#checkin', as: 'checkin_log'

  get '/academies/new', to: 'academies#new'

  post '/academies', to: 'academies#create'

  delete '/academies/:id', to: 'academies#delete'
  

end
