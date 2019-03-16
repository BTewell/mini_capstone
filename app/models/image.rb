class Image < ApplicationRecord
  validates :url, presence: true
  validates :product_id, presence: true
  belongs_to :product

  # def product
  #   Product.find_by(id: product_id)
  # end
end
