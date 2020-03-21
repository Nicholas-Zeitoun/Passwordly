Rails.application.routes.draw do
  devise_for :users
  get 'keys_controller/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'keys#index'
end
