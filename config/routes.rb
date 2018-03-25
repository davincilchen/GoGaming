Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "gostations#index"
  
  resources :users, only: [:show, :index, :edit, :update] do
    collection do
      get :leaderboards
    end
  end
   
  resources :gostations, only:[:index] do
    member do
      post :checkin
      post :uncheckin
      post :getCheckinStatus
    end
  end

  resources :challenges, only:[:create]


  resources :trip_gostations, only:[:show] do 
    member do 
      post :check
    end
  end 
  

  resources :trips, only:[:index, :show] 

  namespace :admin do
    root "gostations#index"
    resources :gostations
    resources :trips
  end
   
  resources :followships, only:[:create, :destroy]

end
