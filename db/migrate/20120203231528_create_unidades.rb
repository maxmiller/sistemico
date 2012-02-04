class CreateUnidades < ActiveRecord::Migration
  def change
    change_table :unidades do |t|

      t.timestamps
    end
  end
end
