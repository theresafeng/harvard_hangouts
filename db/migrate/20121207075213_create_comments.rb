class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :hangout

      t.timestamps
    end
    add_index :comments, :hangout_id
  end
end
