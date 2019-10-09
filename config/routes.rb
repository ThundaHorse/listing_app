Rails.application.routes.draw do
  namespace :api do 
    # Users 
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    # Messages 
    get '/messages' => 'messages#index'
    post '/messages' => 'messages#create'

    # Sessions 
     post "/sessions" => "sessions#create"

     # Listings 
     get "/listings" => "listings#index"
     post "/listings" => "listings#create"
     get "/listings/:id" => "listings#show"
     patch "/listings/:id" => "listings#update"
     delete "/listings/:id" => "listings#destroy"

     # Items 
     get "/items" => "items#index"
     post "/items" => "items#create"
     get "/items/:id" => "items#show"
     patch "/items/:id" => "items#update"
     delete "/items/:id" => "items#destroy"
  end 
end
