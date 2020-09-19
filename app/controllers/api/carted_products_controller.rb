class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user
  def create
    @carted_product = CartedProduct.create(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted"
    )
    render "show.json.jb"
  end
  def index
    @carted_products = CartedProduct.where("user_id = ? AND status = ?",  current_user.id, "carted")
    render "index.json.jb"
  end
end
