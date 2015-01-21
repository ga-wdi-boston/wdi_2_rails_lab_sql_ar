Rails.application.routes.draw do
  resources :people, except: [:edit, :new]
  resources :products, except: [:edit, :new]
end
