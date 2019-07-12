Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :wigs do
    resources :bookings, only: [:new, :create, :destroy, :update]
  end

  get 'dashboard_client', to: 'pages#dashboard_client', as: :dashboard_client
  get 'dashboard_owner', to: 'pages#dashboard_owner', as: :dashboard_owner
end
