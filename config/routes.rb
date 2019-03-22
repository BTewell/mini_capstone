Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get 'one_product' => 'products#single_method'
  #   get 'all_products' => 'products#all_method'
  # end
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  get '/products/:id' => 'products#show'

  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'

    get '/suppliers' => 'suppliers#index'
    get '/suppliers/:id' => 'suppliers#show'
    post '/suppliers' => 'suppliers#create'
    patch '/suppliers/:id' => 'suppliers#update'
    delete '/suppliers/:id' => 'suppliers#destroy'

    post '/users' => 'users#create'

    post '/sessions' => 'sessions#create'

    get '/orders' => 'orders#index'
    get '/orders/:id' => 'orders#show'
    post '/orders' => 'orders#create'

    get 'carted_products' => 'carted_products#index'
    post 'carted_products' => 'carted_products#create'

    delete '/carted_products/:id' => 'carted_products#destroy'
  end
end
