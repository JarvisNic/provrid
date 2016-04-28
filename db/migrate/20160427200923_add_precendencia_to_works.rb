class AddPrecendenciaToWorks < ActiveRecord::Migration
  def change
    add_column :works, :precendencia, :integer
  end
end
