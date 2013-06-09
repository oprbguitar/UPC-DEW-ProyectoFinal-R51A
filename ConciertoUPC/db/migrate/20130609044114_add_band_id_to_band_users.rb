class AddBandIdToBandUsers < ActiveRecord::Migration
  def change
    add_column :band_users, :band_id, :integer
  end
end
