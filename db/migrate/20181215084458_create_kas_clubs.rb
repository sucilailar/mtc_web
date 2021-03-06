class CreateKasClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :kas_clubs do |t|
      t.string :keterangan
      t.float :debit
      t.float :kredit
      t.float :saldo
      t.integer :akun_id

      t.timestamps
    end
    add_foreign_key :kas_clubs, :akuns, column: :akun_id
  end
end
