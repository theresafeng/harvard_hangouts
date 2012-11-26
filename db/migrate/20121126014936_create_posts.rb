class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :event
      t.text :description
      t.string :location
      t.datetime :start_date_time
      t.datetime :end_date_time

      t.timestamps
    end
  end
end
