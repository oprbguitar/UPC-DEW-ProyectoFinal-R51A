class AddFechaToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :fecha, :date
  end
end
