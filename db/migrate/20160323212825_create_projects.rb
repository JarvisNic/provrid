class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :objetive
      t.string :responsable
      t.string :time
      t.string :status
      t.string :fase

      t.timestamps null: false
    end
  end
end
