class AddStyleIdToBands < ActiveRecord::Migration
  def change
  	add_column :bands, :style_id, :integer
  end
end
