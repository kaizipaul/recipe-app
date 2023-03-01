Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :recipes, except: [:update] do
  end
  resources :public_recipes
  post 'toggle_public', to: 'recipes#toggle'


  resources :foods

  resources :shoppinglist, only: %i[index]

  resources :foods, except: [:update] do
  end
end
  # Defines the root path route ("/")
  # root "articles#index"

  root "recipes#index"
  end
