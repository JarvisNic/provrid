class CreateCordinators < ActiveRecord::Migration
  def change
    create_table :cordinators do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
