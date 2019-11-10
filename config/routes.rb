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
    get "/user_listings" => "listings#user_listings"
    patch "/listings/:id" => "listings#update"
    delete "/listings/:id" => "listings#destroy"

    # Items 
    get "/items" => "items#index"
    post "/items" => "items#create"
    get "/items/:id" => "items#show"
    get "/user_items/:id" => "items#user_items"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy"

    # Orders
    get '/orders' => 'orders#index' 
    post '/orders' => 'orders#create'
    get '/orders/:id' => 'orders#show'

    # Carted Products
    get '/carted_products' => 'carted_products#index' 
    get '/carted_products/re_add' => 'carted_products#re_add'
    patch '/carted_products/:id' => 'carted_products#update'
    post '/carted_products' => 'carted_products#create' 
    delete '/carted_products/:id' => 'carted_products#destroy'

    get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }
  end 
end
