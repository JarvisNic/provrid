class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.integer :work_id

      t.timestamps null: false
    end
  end
end
