Rails.application.routes.draw do
  devise_for :exhibitors
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get "pages/product"
  get "pages/home"
end
