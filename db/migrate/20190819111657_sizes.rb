class Sizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.text :size
      t.timestamps
    end
  end
end