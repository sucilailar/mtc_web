class CreatePembayarans < ActiveRecord::Migration[5.2]
  def change
    create_table :pembayarans do |t|
      t.integer :akun_id1
      t.integer :kategori_pembayaran_id
      t.float :nominal
      t.integer :cicilan
      t.boolean :keterangan
      t.integer :akun_id2

      t.timestamps
    end
    add_foreign_key :pembayarans, :akuns, column: :akun_id1
    add_foreign_key :pembayarans, :akuns, column: :akun_id2
  end
end
