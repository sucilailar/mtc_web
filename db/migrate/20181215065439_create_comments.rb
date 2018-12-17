class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :id_creator
      t.integer :id_new
      t.text :comment

      t.timestamps
    end
  end
end
