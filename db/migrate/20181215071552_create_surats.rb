class CreateSurats < ActiveRecord::Migration[5.2]
  def change
    create_table :surats do |t|
    	t.string :no_surat
	    t.string :perihal

      t.timestamps
    end
  end
end
