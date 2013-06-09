class CreateBandUsers < ActiveRecord::Migration
  def change
    create_table :band_users do |t|

      t.timestamps
    end
  end
end
