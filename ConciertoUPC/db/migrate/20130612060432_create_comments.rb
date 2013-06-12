class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :concert_id
      t.text :content
      t.integer :ratio

      t.timestamps
    end
  end
end
