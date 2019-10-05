class Listing < ApplicationRecord
  belongs_to :user
  has_many :items

  def list_items 
    Item.where(listing_id: self.id)
  end 
end
