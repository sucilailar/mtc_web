class CreateDojangs < ActiveRecord::Migration[5.2]
  def change
    create_table :dojangs do |t|
      t.string :nama_dojang
      t.text :alamat
      t.timestamps
    end

  end
end
