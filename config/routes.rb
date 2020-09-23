Rails.application.routes.draw do
	mount ActionCable.server => '/cable'
  get 'messages/create'
  devise_for :users
  get 'rooms/show'
  root 'rooms#show'
  resources :messages, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
