class Item < ApplicationRecord
  belongs_to :listing 
  has_many :users, through: :listings
end
