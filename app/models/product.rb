class Product < ApplicationRecord
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
