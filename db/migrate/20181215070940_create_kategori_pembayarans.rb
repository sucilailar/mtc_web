class CreateKategoriPembayarans < ActiveRecord::Migration[5.2]
  def change
    create_table :kategori_pembayarans do |t|
      t.string :katagori_pembayaran
      t.float :nominal
      
      t.timestamps
    end
  end
end
