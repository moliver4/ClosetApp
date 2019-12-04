class Item < ApplicationRecord
    has_one_attached :photo 
    has_many :item_categories
    has_many :items, through: :item_categories
    validates :worn_count, numericality: true
    validates :condition, inclusion: {in: %w(good, fair, old, Good, Fair, Old)} 

    def categories_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
          category = Category.find_or_create_by(category_attribute)
          self.categories << category
        end
    end
end
