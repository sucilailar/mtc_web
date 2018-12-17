class CreateUkts < ActiveRecord::Migration[5.2]
  def change
    create_table :ukts do |t|
      t.string :nama
      t.string :tempat
      t.date :tgl_lahir
      t.integer :no_reg
      t.string :foto
      t.integer :geup
      t.string :sabuk

      t.timestamps
    end
  end
end
