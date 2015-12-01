class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :description
      t.text :link
      t.timestamps null: false
    end
  end
end
