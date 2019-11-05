class CartedProduct < ApplicationRecord
  belongs_to :user 
  belongs_to :item
  belongs_to :order, optional: true 
  enum status: [:empty, :added, :removed]

  def subtotal 
    quantity * item.price 
  end 
end
