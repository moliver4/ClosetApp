class Category < ApplicationRecord
    has_many :itemcategories
    has_many :items, through: :itemcategories

    validates :title, uniqueness: true
    validates :title, presence: true

    def closet_items(closet_id)
        self.items.where("closet_id = #{closet_id}")
    end

    def most_popular_item
        all_items.sort_by{|item| item.worn_count}.last
    end

    def least_popular_item
        all_items.sort_by{|item| item.worn_count}.first
    end
end
