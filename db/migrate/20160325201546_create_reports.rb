class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.date :date
      t.text :desc
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
