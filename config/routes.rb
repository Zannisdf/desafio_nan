Rails.application.routes.draw do
  resources :projects do
    resources :people, only: [] do
      resources :works, only: %i[new create]
    end
  end
  resources :people
  devise_for :admins

  root 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
