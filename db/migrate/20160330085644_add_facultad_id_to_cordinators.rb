class AddFacultadIdToCordinators < ActiveRecord::Migration
  def change
    add_column :cordinators, :facultad_id, :integer
  end
end
