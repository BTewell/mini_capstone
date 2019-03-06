class Product < ApplicationRecord
  def bargain_finder?
    price.to_i < 10
  end

  def tax
    tax = price.to_i * 0.09
    tax.round(2)
  end

  def total
    price.to_i + tax
  end
end
