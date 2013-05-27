class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
