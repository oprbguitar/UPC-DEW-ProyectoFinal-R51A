class RemoveHoraFinFromConcerts < ActiveRecord::Migration
  def up
    remove_column :concerts, :hora_fin
  end

  def down
    add_column :concerts, :hora_fin, :date
  end
end
