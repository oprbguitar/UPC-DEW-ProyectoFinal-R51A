class AddHoraIniToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :hora_ini, :time
  end
end
