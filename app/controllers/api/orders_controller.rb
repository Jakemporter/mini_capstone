class Api::OrdersController < ApplicationController
  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      subtotal = product.price * params[:quantity].to_i
      tax = subtotal * 0.09
      @order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: product.price * params[:quantity].to_i,
        tax: tax,
        total: subtotal + tax
        )
      if @order.save
        render "show.json.jb"
      else
        render json: {errors: @order.errors.full_messages}
      end
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
  def show
    if current_user
      @order = Order.find_by(id: params[:id])
      render "show.json.jb"
    end
  end
end
