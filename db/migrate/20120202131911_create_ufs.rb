class CreateUfs < ActiveRecord::Migration
  def change
    change_table :ufs do |t|

      t.timestamps
    end
  end
end
