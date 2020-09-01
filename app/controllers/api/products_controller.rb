class Api::ProductsController < ApplicationController
  def allproducts
    @all_products = Product.all
    render "product.json.jb"
  end
end
