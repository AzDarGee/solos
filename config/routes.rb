Rails.application.routes.draw do
  devise_for :users
  resources :projects
  root to: "static_pages#landing_page"
  
  get 'static_pages/landing_page'
  get 'static_pages/privacy_policy'
  get 'map/map'
end
