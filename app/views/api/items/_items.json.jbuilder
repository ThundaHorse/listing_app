json.id item.id 
json.name item.name 
json.price item.price
json.description item.description 

json.image_url rails_blob_url(item.image) if item.image.attachment