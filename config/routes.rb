Rails.application.routes.draw do
  root 'static#landing'
  devise_for :users
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
