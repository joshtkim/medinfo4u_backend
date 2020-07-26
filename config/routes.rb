Rails.application.routes.draw do
  resources :symptoms
  resources :appointments
  resources :visitors
  resources :nurses
  resources :doctors
  post '/doctors/login', to: 'doctors#login'
  post '/nurses/login', to: 'nurses#login'
  post '/visitors/login', to: 'visitors#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
