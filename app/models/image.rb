class Image < ApplicationRecord
  validates :url, presence: true
  validates :product_id, presence: true

  def product
    Product.find_by(id: product_id)
  end
end
