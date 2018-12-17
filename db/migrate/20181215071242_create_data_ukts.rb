class CreateDataUkts < ActiveRecord::Migration[5.2]
  def change
    create_table :data_ukts do |t|
      t.string :periode
      t.integer :jumlah

      t.timestamps
    end
  end
end
