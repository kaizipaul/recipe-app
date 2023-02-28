resources :recipes, except: [:update] do
  end

  resources :foods, except: [:update] do
  end

  # Defines the root path route ("/")
  # root "articles#index"
