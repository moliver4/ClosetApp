class Closet < ApplicationRecord
    belongs_to :user
    has_many :item_categories
    has_many :items, through: :item_categories
    has_many :categories, through: :item_categories

end
