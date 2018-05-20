class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table  :comments do |t|
     t.string     :text
     t.belongs_to :friend
      
    # t.integer    :friend_id
    # t.reference  :friend
    # t.belongs_to :friend
    # 위 세가지 다 같은 의미

      t.timestamps
    end
  end
end
