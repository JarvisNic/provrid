class RemoveProjectIdFromCordinators < ActiveRecord::Migration
  def change
    remove_column :cordinators, :project_id, :integer
  end
end
