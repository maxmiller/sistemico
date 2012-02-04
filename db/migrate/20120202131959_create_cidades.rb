class CreateCidades < ActiveRecord::Migration
  def change
    change_table :cidades do |t|

      t.timestamps
    end
  end
end
