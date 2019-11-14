Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, except: [ :edit, :update ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :ingredients, only: [ :index ]
  resources :doses, only: [ :destroy ]
end
