class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.integer :akun_id
      t.string :judul
      t.string :foto
      t.text :isi
      t.text :ringkasan

      t.timestamps
    end
    add_foreign_key :news, :akuns, column: :akun_id
  end
end
