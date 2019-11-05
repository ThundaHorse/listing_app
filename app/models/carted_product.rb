class CartedProduct < ApplicationRecord
  belongs_to :user 
  belongs_to :item
  belongs_to :order, optional: true 
  enum status: [:empty, :added, :removed]

  def subtotal 
    quantity * item.price
  end 

  def cart_total
    total = 0
    CartedProduct.all.each { |i| total += i.subtotal }
    total
  end 
end
