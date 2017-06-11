class ChangeDataTypeForAncho < ActiveRecord::Migration[5.0]
  def change
    change_column :fabrics, :ancho, 
  end
end
