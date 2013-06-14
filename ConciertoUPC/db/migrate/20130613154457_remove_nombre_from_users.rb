class RemoveNombreFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :nombre
  end

  def down
    add_column :users, :nombre, :string
  end
end
