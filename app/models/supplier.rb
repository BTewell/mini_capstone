class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  has_many :products
  # def products
  #   Product.where(supplier_id: id)
  # end
end
