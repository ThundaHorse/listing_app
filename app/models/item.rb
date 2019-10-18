class Item < ApplicationRecord
  belongs_to :listing 
  has_many :users, through: :listings
  has_many_attached :photos
  scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }
end
