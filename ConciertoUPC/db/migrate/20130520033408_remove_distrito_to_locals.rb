class RemoveDistritoToLocals < ActiveRecord::Migration
  def up
    remove_column :locals, :distrito
  end

  def down
    add_column :locals, :distrito, :string
  end
end
