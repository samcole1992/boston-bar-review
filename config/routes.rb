Rails.application.routes.draw do
  # match 'users/:id' => 'user#destroy', :via => :delete, :as => :user_destroy

  devise_for :users

  resources :bars, only: [:index, :show, :create, :destroy]

  root "bars#index"
end
