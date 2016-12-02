Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :spaces, only: [:new, :create, :show] do
    get :photo, on: :member
  end

  root to: "spaces#new"
end
