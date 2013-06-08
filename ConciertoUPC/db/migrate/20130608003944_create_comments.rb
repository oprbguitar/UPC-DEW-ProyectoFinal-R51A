class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user
      t.references :concert
      t.integer :points

      t.timestamps
    end
    add_index :comments, :concert_id
    add_index :comments, :user_id
  end
end
