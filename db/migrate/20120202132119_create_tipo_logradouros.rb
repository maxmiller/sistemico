class CreateTipoLogradouros < ActiveRecord::Migration
  def change
     change_table(:tipo_logradouros) do |t|

      t.timestamps
    end
  end
end
