class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :description
      t.boolean :private
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
