json.id @item.id 
json.name @item.name 
json.price @item.price
json.description @item.description 

# json.photos rails_blob_url(@item.photos) if @item.photos.attachments
json.photos rails_blob_url(@item.photos) if @item.photos.attached?
# json.image rails_blob_path(@item, only_path: true) if @item.photos.attachment
