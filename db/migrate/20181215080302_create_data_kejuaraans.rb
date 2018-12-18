class CreateDataKejuaraans < ActiveRecord::Migration[5.2]
  def change
    create_table :data_kejuaraans do |t|
      t.integer :kegiatan_id
      t.integer :jumlah_peserta
      t.integer :emas
      t.integer :perak
      t.integer :perunggu
      t.integer :jumlah_total_medali
      t.string :keterangan

      t.timestamps
    end
    add_foreign_key :data_kejuaraans, :kegiatans, column: :kegiatan_id
  end
end
