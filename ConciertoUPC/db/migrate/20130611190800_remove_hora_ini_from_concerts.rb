class RemoveHoraIniFromConcerts < ActiveRecord::Migration
  def up
    remove_column :concerts, :hora_ini
  end

  def down
    add_column :concerts, :hora_ini, :date
  end
end
