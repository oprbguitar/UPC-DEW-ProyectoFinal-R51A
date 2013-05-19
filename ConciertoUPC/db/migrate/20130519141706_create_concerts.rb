class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.date :hora_ini
      t.date :hora_fin

      t.timestamps
    end
  end
end
