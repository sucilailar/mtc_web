class CreateKejuaraans < ActiveRecord::Migration[5.2]
  def change
    create_table :kejuaraans do |t|
      t.integer :akun_id
      t.integer :kegiatan_id
      t.string :perolehan
      t.string :kategori_under
      t.string :jenis_kejuaraan
      t.string :prestasi_pemula
      t.string :tingkat

      t.timestamps
    end
    add_foreign_key :kejuaraans, :akuns, column: :akun_id
    add_foreign_key :kejuaraans, :kegiatans, column: :kegiatan_id
  end
end
