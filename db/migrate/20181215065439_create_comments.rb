class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      	t.integer :akun_id
      	t.integer :id_new
      	t.text :comment

      t.timestamps
    end
    add_foreign_key :comments, :akuns, column: :akun_id
  end
end
