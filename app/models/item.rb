class Item < ApplicationRecord
    has_one_attached :photo 
    belongs_to :closet
    has_many :itemcategories
    has_many :categories, through: :itemcategories

    def closet_name
      self.closet.title
    end


end
