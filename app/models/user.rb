class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :messages
  has_many :listings 
  has_many :items, through: :listings
  has_many :orders
  has_many :carted_products 


  def user_listings 
    Listing.find_by(user_id: self.id)
  end 

  def user_items 
    Item.where(listing_id: user_listings.id)
  end 

  def cart 
    CartedProduct.where(status: 1)
  end 
end
