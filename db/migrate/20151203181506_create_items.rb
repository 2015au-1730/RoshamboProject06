class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :description
      t.text :image
      t.text :link
      t.references :list
      t.timestamps null: false
    end
  end
end
