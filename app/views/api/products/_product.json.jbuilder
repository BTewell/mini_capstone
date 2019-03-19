json.id product.id
json.name product.name
json.description product.description
json.price product.price
json.supplier_name product.supplier.name
json.images product.images
json.user current_user
json.categories product.categories
json.formatted do
  json.bargain product.bargain_finder?
  json.tax product.tax
  json.total product.total
  json.in_stock product.in_stock
end