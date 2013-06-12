class AddNudocidentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nudocident, :integer
  end
end
