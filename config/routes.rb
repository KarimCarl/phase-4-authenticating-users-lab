Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   # Login 
   post "/login", to: "sessions#create"
   # Stay logged-in
   get "/me", to: "users#show"
   # Logout
   delete "/logout", to: "sessions#destroy"
end
