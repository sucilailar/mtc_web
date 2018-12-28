class CreateDataUkts < ActiveRecord::Migration[5.2]
  def change
    create_table :data_ukts do |t|
      t.string :periode
      t.integer :sabuk_putih
      t.integer :sabuk_kuning_polos
      t.integer :sabuk_kuning_strip
      t.integer :sabuk_hijau_polos
      t.integer :sabuk_hijau_strip
      t.integer :sabuk_biru_polos
      t.integer :sabuk_biru_strip
      t.integer :sabuk_merah_polos
      t.integer :sabuk_merah_strip
      t.integer :sabuk_merah_strip_satu
      t.integer :sabuk_merah_strip_dua
      t.integer :jumlah

      t.timestamps
    end
  end
end
