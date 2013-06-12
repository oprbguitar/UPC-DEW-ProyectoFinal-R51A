class RemovePrenombreFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :prenombre
  end

  def down
    add_column :users, :prenombre, :string
  end
end
