class CreateAkuns < ActiveRecord::Migration[5.2]
  def change
    create_table :akuns do |t|
      t.integer :no_reg
      t.string :nama
      t.string :tempat_lahir
      t.date :tgl_lahir
      t.integer :geup
      t.text :alamat
      t.string :dojang
      t.integer :tahun_masuk
      t.integer :angkatan
      t.string :pekerjaan
      t.integer :role_id
      t.integer :status_id

      t.timestamps
    end
  end
end
