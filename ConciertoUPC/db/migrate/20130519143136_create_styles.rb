class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :descripccion

      t.timestamps
    end
  end
end
