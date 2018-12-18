class CreateAbsensis < ActiveRecord::Migration[5.2]
  def change
    create_table :absensis do |t|
      t.integer :akun_id1
      t.date :tgl
      t.string :keterangan
      t.integer :dojang_id
      t.integer :akun_id2

      t.timestamps
    end
    add_foreign_key :absensis, :akuns, column: :akun_id1
    add_foreign_key :absensis, :akuns, column: :akun_id2
  end
end
