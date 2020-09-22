class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products

  def update_totals
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0
    carted_products.map do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
      calculated_tax += carted_product.quantity * carted_product.product.tax
    end
    calculated_total += calculated_subtotal + calculated_tax
    update(subtotal: calculated_subtotal, tax: calculated_tax, total: calculated_total)
  end
end
