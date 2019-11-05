class Item < ApplicationRecord
  validates :name, presence: true 
  validates :name, uniqueness: true 
  validates :description, presence: true 
  validates :price, presence: true 
  validates :price, numericality: { greater_than_or_equal_to: 0, less_than: 9999999.99 } 
  
  belongs_to :listing 
  has_many :users, through: :listings
  has_many_attached :photos
  has_many :carted_products 
  has_many :orders, through: :carted_products
  scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }
end
