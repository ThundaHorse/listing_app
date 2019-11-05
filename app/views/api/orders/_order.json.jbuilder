json.id order.id

json.user do 
  json.partial! order.user, partial: "api/users/users", as: :user
end 

json.carted_products do 
  json.array! order.carted_products, partial: 'api/carted_products/carted_products', as: :carted_product 
end 
 
json.subtotal order.subtotal 
json.tax order.tax 
json.total order.total