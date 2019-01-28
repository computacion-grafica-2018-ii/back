class QuotationProduct < ApplicationRecord
  belongs_to :product
  belongs_to :quotation
end
