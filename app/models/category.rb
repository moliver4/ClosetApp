class Category < ApplicationRecord
    has_many :itemcategories
    has_many :items, through: :itemcategories

    validates :title, uniqueness: true
    validates :title, presence: true

    def closet_items(closet_id)
        my_items = self.items.where("closet_id = #{closet_id}")
        my_items.sort_by{|item| item.worn_count}.reverse!

    end

end
