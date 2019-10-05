class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :listings 
  has_many :items, through: :listings

  def user_listings 
    Listing.find_by(user_id: self.id)
  end 

  def user_items 
    Item.where(listing_id: user_listings.id)
  end 
end