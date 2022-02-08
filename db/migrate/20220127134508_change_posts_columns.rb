class ChangePostsColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :user_id, :string
    remove_column :posts, :area_id, :string
    remove_column :posts, :genre_id, :string
    
    add_column :posts, :user_id, :integer
    add_column :posts, :area_id, :integer
    add_column :posts, :genre_id, :integer
    
  end
end
