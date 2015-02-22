class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|

      t.timestamps null: false
      t.integer :roomNum
      t.string :requester
    end
  end
end
