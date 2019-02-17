class Product < ApplicationRecord
  has_many :quotation_products
  has_many :quotations, through: :quotation_products
end
