class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products 
  has_many :items, through: :carted_products  

  def calculate_subtotal
    self.subtotal = user.cart.sum { |carted_product| carted_product.subtotal } 
  end 

  def calculate_tax 
    self.tax = subtotal * 0.09 
  end 

  def calculate_total 
    self.total = subtotal + tax 
  end 

  def save_totals
    calculate_subtotal
    calculate_tax
    calculate_total 
    save 
    update_cart 
  end 

  def update_cart 
    user.cart.update_all(status: "purchased", order_id: self.id) 
  end 
end
