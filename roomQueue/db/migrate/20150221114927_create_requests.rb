class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :requester
      t.string :room

      t.timestamps null: false
    end
  end
end
