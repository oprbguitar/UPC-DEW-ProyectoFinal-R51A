class RemoveNombreFromBands < ActiveRecord::Migration
  def up
    remove_column :bands, :nombre
  end

  def down
    add_column :bands, :nombre, :string
  end
end
