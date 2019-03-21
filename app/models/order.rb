class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products
  # def subtotal
  #   subtotal = quantity * product[:id.price]
  # end

  # def tax
  #   tax = subtotal * 0.09
  #   tax.round(2)
  # end

  # def total
  #   total = subtotal + tax
  # end

end

