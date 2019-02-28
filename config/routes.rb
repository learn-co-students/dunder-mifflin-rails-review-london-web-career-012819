Rails.application.routes.draw do
  resources :dogs
  resources :employees

  get '/sorted_dogs', to: 'dogs#sorted'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
