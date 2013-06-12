class AddHoraFinToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :hora_fin, :time
  end
end
