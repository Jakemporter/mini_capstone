class Api::OrdersController < ApplicationController
  def create
    if current_user
      Order.create!(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: Product.find_by(id: :product_id).price * :quantity,
        )
      render json: {message: "product purchased"}
    else
      render json: {message: "must be logged in"}
    end
  end
end
