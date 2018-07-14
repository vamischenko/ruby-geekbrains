Rails.application.routes.draw do
  get 'about/show'
  get 'home/index'
  root 'home#index'
end
