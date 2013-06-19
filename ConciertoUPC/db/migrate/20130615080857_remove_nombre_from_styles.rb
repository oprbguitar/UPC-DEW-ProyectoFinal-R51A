class RemoveNombreFromStyles < ActiveRecord::Migration
  def up
    remove_column :styles, :nombre
  end

  def down
    add_column :styles, :nombre, :string
  end
end
