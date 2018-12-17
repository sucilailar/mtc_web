class CreateKegiatans < ActiveRecord::Migration[5.2]
  def change
    create_table :kegiatans do |t|
      t.string :nama_kegiatan
      t.text :tempat
      t.date :tgl
      t.float :biaya

      t.timestamps
    end
  end
end
