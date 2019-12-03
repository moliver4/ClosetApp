class Item < ApplicationRecord
    has_one_attached :photo 
    has_many :item_categories
    has_many :items, through: :item_categories
end
