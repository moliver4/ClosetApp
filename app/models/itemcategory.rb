class Itemcategory < ApplicationRecord
    belongs_to :items
    belongs_to :categories
    belongs_to :closets
end
