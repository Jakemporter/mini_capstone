Rails.application.routes.draw do
  namespace :api do
    get "/allproducts" => "products#allproducts"
    get "/candle" => "products#candle"
    get "/lamp" => "products#lamp"
    get "/iphone" => "products#iphone"
    get "/terminal" => "products#terminal"
  end
end
