class CreateUsuarios < ActiveRecord::Migration
  def change
    change_table :usuarios do |t|

      t.timestamps
    end
  end
end
