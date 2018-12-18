class CreatePengurus < ActiveRecord::Migration[5.2]
  def change
    create_table :pengurus do |t|
      t.integer :akun_id
      t.integer :role_id
      t.integer :periode_awal
      t.integer :periode_akhir

      t.timestamps
    end
    add_foreign_key :pengurus, :akuns, column: :akun_id
    add_foreign_key :pengurus, :roles, column: :role_id
  end
end
