class AddLocalIdToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :local_id, :integer
  end
end
