class CreateTipoEnderecos < ActiveRecord::Migration
  def change
    change_table :tipo_enderecos do |t|

      t.timestamps
    end
  end
end
