class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :ti_persona
      t.string :prenombre
      t.string :ap_paterno
      t.string :ap_materno
      t.integer :sexo
      t.integer :ti_doc_ident
      t.string :nu_doc_ident
      t.string :email

      t.timestamps
    end
  end
end
