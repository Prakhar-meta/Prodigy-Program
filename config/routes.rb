Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :day_wise_activities do
    collection do
      post :submit_activity_progress
    end
    member do
      get 'daily_activity_plan'
    end
  end
end
