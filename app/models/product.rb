class Product < ApplicationRecord
  def self.to_csv(options = {})
    CSV.generate(options) do |variable|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_name)
      end
    end
  end
end
