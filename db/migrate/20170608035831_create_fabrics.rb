class CreateFabrics < ActiveRecord::Migration[5.0]
  def change
    create_table :fabrics do |t|
      t.string :diseno
      t.integer :peso
      t.integer :ancho

      t.timestamps

    end
  end
end
