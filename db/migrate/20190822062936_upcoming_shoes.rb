class UpcomingShoes < ActiveRecord::Migration[5.2]
  def change
    create_table :upcoming_shoes do |t|
      t.text :name
      t.text :image_url
      t.text :release_date
      t.integer :retail_price
      t.references :brand
      t.timestamps
    end
  end
end