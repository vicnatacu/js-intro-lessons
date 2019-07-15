Rails.application.routes.draw do
  get "/films", to: "films#index"
  get "/films/new", to: "films#new", as: "new_film"
  post "/films", to: "films#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
