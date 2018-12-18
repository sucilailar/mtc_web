class CreateGeups < ActiveRecord::Migration[5.2]
  def change
    create_table :geups do |t|
      t.integer :geup
      t.string :warna_string

      t.timestamps
    end
  end
end
