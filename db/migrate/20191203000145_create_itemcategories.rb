class CreateItemcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :itemcategories do |t|
      t.integer :category_id
      t.integer :item_id
      t.integer :closet_id

      t.timestamps
    end
  end
end
