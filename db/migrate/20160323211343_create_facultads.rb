class CreateFacultads < ActiveRecord::Migration
  def change
    create_table :facultads do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
