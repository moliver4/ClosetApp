class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :size
      t.integer :worn_count, :default => 0 
      t.string :condition, :default => "good"

      t.timestamps
    end
  end
end
