class AddPrecioToFabrics < ActiveRecord::Migration[5.0]
  def change
    add_column :fabrics, :title, :string
  end
end
