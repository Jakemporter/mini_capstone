class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user
  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted"
    )
    @carted_product.save
    render "show.json.jb"
  end
  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.json.jb"
  end
  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: { status: "Carted product successfully removed!" }
  end
end
