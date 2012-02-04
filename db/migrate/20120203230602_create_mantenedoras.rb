class CreateMantenedoras < ActiveRecord::Migration
  def change
    change_table :mantenedoras do |t|

      t.timestamps
    end
  end
end
