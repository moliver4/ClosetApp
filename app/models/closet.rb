class Closet < ApplicationRecord
    belongs_to :user
    has_many :items
    has_many :itemcategories, through: :items



    def all_categories
        items = self.items.all
        categories = items.map do |item|
            item.categories
        end
        categories.flatten.uniq
    end

    def categories_titles
        all_categories.pluck('title')
    end





end
