Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/allproducts" => "products#allproducts"
    get "/candle" => "products#candle"
    get "/lamp" => "products#lamp"
    get"/iphone" => "products#iphone"
  end
end
