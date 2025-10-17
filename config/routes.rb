Rails.application.routes.draw do
  resources :estudiantes
  root to: 'datos#index'
end
