Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stories', to: 'stories#index'
  post '/stories', to: 'stories#create'
  patch '/stories/:id', to: 'stories#update'
  delete '/stories/:id', to: 'stories#destroy'
  get '/stories/:id', to: 'stories#show'
end
