class Oneshot < ActiveRecord::Migration
  def change
      add_column :requests, :email, :string
      remove_column :requests, :roomNum
  end
end
