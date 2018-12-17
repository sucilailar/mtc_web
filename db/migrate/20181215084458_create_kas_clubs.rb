class CreateKasClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :kas_clubs do |t|
      t.string :keterangan
      t.float :debit
      t.float :kredit
      t.float :saldo
      t.float :id_bendahara

      t.timestamps
    end
  end
end
