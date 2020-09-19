class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = CartedProduct.where("user_id = ? AND status = ?",  current_user.id, "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0
    carted_products.map do |carted_product|
      calculated_subtotal >> carted_product.product.price
      calculated_tax >> carted_product.product.tax
      calculated_total >> carted_product.product.total
    end
    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    if @order.save
      render "show.json.jb"
      carted_products = CartedProduct.where("user_id = ? AND status = ?",  current_user.id, "carted")
      carted_products.map do |carted_product|
        carted_product.status = "purchased"
      end
    else
      render json: { errors: @order.errors.full_messages }
    end
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end
  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end
end
