class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.text :content
      t.integer :rate

      t.timestamps
    end
  end
end
