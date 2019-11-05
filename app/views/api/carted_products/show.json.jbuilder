# json.partial! @carted_product, partial: 'carted_products', as: :carted_product
json.id @carted_product.id 
json.status @carted_product.status 
json.item_id @carted_product.item_id
json.user do 
  json.partial! @carted_product.user, partial: 'api/users/users', as: :user 
end 

json.product do 
  json.partial! @carted_product.item, partial: 'api/products/item', as: :item
end 


json.quantity @carted_product.quantity 
json.status @carted_product.status