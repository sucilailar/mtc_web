class CreateAkuns < ActiveRecord::Migration[5.2]
  def change
    create_table :akuns do |t|
      t.integer :no_reg
      t.string :nama
      t.string :tempat_lahir
      t.date :tgl_lahir
      t.integer :geup_id
      t.text :alamat
      t.integer :dojang_id
      t.integer :tahun_masuk
      t.integer :angkatan
      t.string :pekerjaan
      t.integer :role_id
      t.integer :status_id

      t.timestamps
    end
    add_foreign_key :akuns, :geups, column: :geup_id
    add_foreign_key :akuns, :dojangs, column: :dojang_id
    add_foreign_key :akuns, :roles, column: :role_id
    add_foreign_key :akuns, :statuses, column: :status_id
  end
end
