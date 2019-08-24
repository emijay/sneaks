class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :shoe_id
      t.string :image
    end
  end
end