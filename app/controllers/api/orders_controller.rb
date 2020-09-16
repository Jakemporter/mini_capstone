class Api::OrdersController < ApplicationController
  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      subtotal = product.price * params[:quantity].to_i
      tax = subtotal * 0.09
      order = Order.create!(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: product.price * params[:quantity].to_i,
        tax: subtotal * 0.09,
        total: subtotal + tax
        )
      render json: {order: order}
    else
      render json: {message: "must be logged in"}
    end
  end

  def index
    if current_user
      @orders = Order.where(user_id: current_user.id)
      render "index.json.jb"
    else
      render json: {denied: "Must be logged in to view orders"}
    end
  end
end
