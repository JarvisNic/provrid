class RemoveResponsableFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :responsable, :string
  end
end
