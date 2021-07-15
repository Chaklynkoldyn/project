Rails.application.routes.draw do


  root "articles#index"

   resources :articles do
     resources :comments
   end

  resources :blogs do
    resources :comments
  end

  get 'home/index', as: 'home'
  devise_for :users
  get 'persons/profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
