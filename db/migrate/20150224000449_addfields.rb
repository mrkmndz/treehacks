class Addfields < ActiveRecord::Migration
       def change
    add_column :offers,:roomNum,:integer
    add_column :offers,:offerer,:string
  end
end
