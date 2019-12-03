class CreateClosets < ActiveRecord::Migration[6.0]
  def change
    create_table :closets do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
