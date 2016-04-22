class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.text :objetive
      t.text :descripcion
      t.date :fecha_inicio
      t.date :fecha_fin
      t.integer :report_id

      t.timestamps null: false
    end
  end
end
