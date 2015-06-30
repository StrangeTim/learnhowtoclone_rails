Rails.application.routes.draw do
  root to: 'sections#index'
  resources :sections do
    resources :lessons, except: [:index]
  end
end
