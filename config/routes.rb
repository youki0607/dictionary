Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'indices#index'
  resources :indices do
    collection do
      get 'search'
    end
  end
end
