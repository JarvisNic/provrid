class AddCordinatorIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :cordinator_id, :integer
  end
end
