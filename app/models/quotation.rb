class Quotation < ApplicationRecord
  belongs_to :user
  has_many :quotation_products, dependent: :delete_all
  has_many :products, through: :quotation_products
end
