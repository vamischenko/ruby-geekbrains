Rails.application.routes.draw do
  get 'task/main'
  get 'task/contacts'
  root 'task#main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
