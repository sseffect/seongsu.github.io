class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.belongs_to :friend

      t.timestamps
    end
  end
end
