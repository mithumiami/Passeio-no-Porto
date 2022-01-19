class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

    t.string :user_id, foreign_key: true
    t.string :area_id, foreign_key: true
    t.string :genre_id, foreign_key: true
    t.string :image_id
    t.string :title
    t.string :body

      t.timestamps
    end
  end
end
