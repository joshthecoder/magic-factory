Rails.application.routes.draw do
  root 'cards#index'

  resources :cards do
    get :search, on: :collection
  end
end
