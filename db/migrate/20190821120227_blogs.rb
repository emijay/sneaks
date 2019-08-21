class Blogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :content
      t.text :image_url
      t.timestamps
    end
  end
end