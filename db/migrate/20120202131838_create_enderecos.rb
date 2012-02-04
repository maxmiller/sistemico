class CreateEnderecos < ActiveRecord::Migration
  def change
    change_table :enderecos do |t|

      t.timestamps
    end
  end
end
