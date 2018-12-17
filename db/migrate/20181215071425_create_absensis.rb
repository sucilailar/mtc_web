class CreateAbsensis < ActiveRecord::Migration[5.2]
  def change
    create_table :absensis do |t|
      t.string :akun_id
      t.date :tgl
      t.string :keterangan
      t.integer :dojang_id
      t.integer :id_sekretaris

      t.timestamps
    end
  end
end
