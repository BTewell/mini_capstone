json.id product.id
json.name product.name
json.description product.description
json.price product.price.to_i
json.image_url product.image_url
json.formatted do
  json.bargain product.bargain_finder?
  json.tax product.tax
  json.total product.total
end