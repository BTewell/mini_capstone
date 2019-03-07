json.id product.id
json.name product.name
json.description product.description
json.price number_to_currency(product.price)
json.image_url product.image_url
json.formatted do
  json.bargain product.bargain_finder?
  json.tax product.tax
  json.total product.total
  json.in_stock product.in_stock
end