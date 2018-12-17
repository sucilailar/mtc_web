class CreatePembayarans < ActiveRecord::Migration[5.2]
  def change
    create_table :pembayarans do |t|
      t.integer :akun_id
      t.integer :kategori_pembayaran_id
      t.float :nominal
      t.integer :cicilan
      t.boolean :keterangan
      t.integer :id_bendahara

      t.timestamps
    end
  end
end
