class DropStylesTable < ActiveRecord::Migration
  def up
  		drop_table :Styles
  end

  def down
  end
end
