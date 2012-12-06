class AddComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
       t.references :user
       t.text :content
       t.references :hangout

       t.timestamps
     end
  end
end
