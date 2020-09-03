Rails.application.routes.draw do
  namespace :api do
    get "/allproducts" => "products#allproducts"
    get "/product/:id" => "products#product"
    get "/product" => "products#product"
  end
end
