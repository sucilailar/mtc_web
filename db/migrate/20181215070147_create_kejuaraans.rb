class CreateKejuaraans < ActiveRecord::Migration[5.2]
  def change
    create_table :kejuaraans do |t|
      t.integer :peserta_id
      t.integer :event_id
      t.string :perolehan
      t.string :kategori_under
      t.string :jenis_kejuaraan
      t.string :prestasi_pemula
      t.string :tingkat

      t.timestamps
    end
  end
end
