class AddTidocidentToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tidocident, :string
  end
end
