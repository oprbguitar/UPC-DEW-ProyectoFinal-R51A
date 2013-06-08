class AddConcertIdToComentarios < ActiveRecord::Migration
  def change
    add_column :comentarios, :concert_id, :integer
  end
end
