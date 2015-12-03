class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :description
      t.integer :cost
      t.text :link
      t.text :category
      t.timestamps null: false
    end
  end
  @list = List.order(cost)
end
