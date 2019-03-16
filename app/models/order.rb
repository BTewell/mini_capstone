class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

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

