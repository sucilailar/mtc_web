class CreateKas < ActiveRecord::Migration[5.2]
  def change
    create_table :kas do |t|
      t.string :keterangan
      t.float :debit
      t.float :kredit
      t.float :saldo
      t.integer :bendahara_id

      t.timestamps
    end
  end
end
