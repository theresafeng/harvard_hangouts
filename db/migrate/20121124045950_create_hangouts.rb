class CreateHangouts < ActiveRecord::Migration
  def change
    create_table :hangouts do |t|
      t.string :name
      t.string :event
      t.string :location
      t.text :description
      t.datetime :start_date_time
      t.datetime :end_date_time

      t.timestamps
    end
  end
end
