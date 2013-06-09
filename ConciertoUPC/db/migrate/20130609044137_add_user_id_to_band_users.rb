class AddUserIdToBandUsers < ActiveRecord::Migration
  def change
    add_column :band_users, :user_id, :integer
  end
end
