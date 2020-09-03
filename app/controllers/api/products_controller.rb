class Api::ProductsController < ApplicationController
  def allproducts
    @all_products = Product.all
    render "all.json.jb"
  end
  def product
    input = params["id"].to_i
    @product = Product.find_by(id: input)
    render "product.json.jb"
  end
end
