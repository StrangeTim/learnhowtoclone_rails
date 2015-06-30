Rails.application.routes.draw do
  root to: 'lessons#index'
  resources :lessons do
  end
end
