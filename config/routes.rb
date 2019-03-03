Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get 'one_product' => 'products#single_method'
    get 'all_products' => 'products#all_method'
  end
end
