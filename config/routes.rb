Rails.application.routes.draw do
  root to: "static_pages#landing_page"

  devise_for :users
  
  resources :projects
  get 'all_projects', to: 'projects#all_projects'

  
  get 'static_pages/landing_page'
  get 'static_pages/privacy_policy'
  get 'map', to: 'map#map'
end
