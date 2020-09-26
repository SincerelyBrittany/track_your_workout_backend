Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :user_workouts
      resources :workouts
    end
  end 
  resources :users, only: [:create]
  post '/auth', to: "sessions#create"
end
