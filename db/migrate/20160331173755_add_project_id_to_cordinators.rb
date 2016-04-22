class AddProjectIdToCordinators < ActiveRecord::Migration
  def change
    add_column :cordinators, :project_id, :integer
  end
end
