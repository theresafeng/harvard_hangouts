class AddHouseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :house, :string
  end
end
