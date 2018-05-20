class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :hobby
    

      t.timestamps
    end
  end
end
