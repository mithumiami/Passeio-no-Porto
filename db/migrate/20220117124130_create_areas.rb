class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|

      t.string :title
      t.string :image_id

      t.timestamps
    end
  end
end
