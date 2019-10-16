json.id item.id 
json.name item.name 
json.price item.price
json.description item.description 

json.photo rails_blob_url(item.photos) if item.photos.attachments