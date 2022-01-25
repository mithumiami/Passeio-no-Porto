class AddIsActiveToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_active, :boolean, default: true, null: false
    #trueが有効falseが退会
  end
end
