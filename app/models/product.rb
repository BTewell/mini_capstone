class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true
  validates :description, length: {in: 10..500}
  validates :image_url, presence: true

  def bargain_finder?
    price < 10
  end

  def tax
    tax = price * 0.09
    tax.round(2)
  end

  def total
    price + tax
  end
end
