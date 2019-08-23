class Shoes < ActiveRecord::Migration[5.2]
  def change
    create_table :shoes do |t|
      t.text :name
      t.text :color
      t.text :release_year
      t.text :style
      t.text :description
      t.integer :cost_price
      t.text :first_image_url
      t.text :second_image_url
      t.text :third_image_url
      t.text :fourth_image_url
      t.references :brand
      t.references :size
      t.timestamps
    end
  end
end