class CreateConcurrences < ActiveRecord::Migration
  def change
    create_table :concurrences do |t|
      t.integer :es_asistencia

      t.timestamps
    end
  end
end
