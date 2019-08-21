Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :channels do
    get 'home'
    get 'show'
  end

  mount ActionCable.server => '/cable'

  root 'channels#home'
end
