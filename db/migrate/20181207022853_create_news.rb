class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.integer :id_creator
      t.string :judul
      t.string :foto
      t.text :isi
      t.text :ringkasan

      t.timestamps
    end
  end
end
