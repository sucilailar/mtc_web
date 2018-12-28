class CreatePjDojangs < ActiveRecord::Migration[5.2]
  def change
    create_table :pj_dojangs do |t|
      t.integer :dojang_id
      t.integer :akun_id

      t.timestamps
    end
  end
end
