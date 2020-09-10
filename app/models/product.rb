class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true
  validates :description, length: { in: 2..800 }
  
  def friendly_updated_at
    created_at.strftime("%B%e, %Y")
  end
  def is_discounted?
    price <= 15
  end
  def tax
    price * 0.09
  end
  def total
    price + tax
  end
end
