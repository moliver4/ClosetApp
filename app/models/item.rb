class Item < ApplicationRecord
    has_one_attached :photo 
    belongs_to :closet
    has_many :itemcategories
    has_many :categories, through: :itemcategories

    def closet_name
      self.closet.title
    end

    def real_name
      array = self.name.split(" ")
      array.map {|word| word.capitalize}.join(" ")
    end


end
