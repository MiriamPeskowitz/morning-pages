Rails.application.routes.draw do
  # resources :entries
  get '/entries' => 'entries#index'
  get '/entries/:id' => 'entries#show'
end
