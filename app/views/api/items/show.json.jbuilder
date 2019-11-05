# json.id @item.id 
# json.listing_id @item.listing_id
# json.name @item.name 
# json.price @item.price
# json.description @item.description 

# json.photos rails_blob_url(@item.photos) if @item.photos.attachments
# json.photos rails_blob_url(@item.photos) if @item.photos.attached?
# json.image rails_blob_path(@item.photos, only_path: true) if @item.photos.attached?

# json.photos rails_blob_url(@item.photos) if @item.photos.attached?

# json.photos rails_blob_url(@item.photos, only_path: true)

# json.photos @item.photos.each do |img| 
#   json.img rails_blob_url(img)
# end 
json.partial! @item, partial: "item", as: :item