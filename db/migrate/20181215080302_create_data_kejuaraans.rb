class CreateDataKejuaraans < ActiveRecord::Migration[5.2]
  def change
    create_table :data_kejuaraans do |t|
      t.integer :akun_id
      t.integer :kegiatan_id
      t.string :perolehan
      t.string :kategori_under
      t.string :jenis_kejuaraan
      t.string :prestasi_pemula
      t.string :tingkat

      t.timestamps
    end
  end
end
