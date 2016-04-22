class AddUserIdToCordinators < ActiveRecord::Migration
  def change
    add_column :cordinators, :user_id, :integer
  end
end
