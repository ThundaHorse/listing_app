json.id carted_product.id 
json.status carted_product.status 
json.item_id carted_product.item_id

json.user do 
  json.partial! carted_product.user, partial: 'api/users/users', as: :user 
end 

json.item do 
  json.partial! carted_product.item, partial: 'api/items/items', as: :item
end 

json.quantity carted_product.quantity 
json.status carted_product.status
json.subtotal carted_product.subtotal
json.total carted_product.cart_total